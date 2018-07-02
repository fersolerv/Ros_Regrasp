
#include "ros/ros.h"
#include "trajectory_msgs/JointTrajectoryPoint.h"
#include "kth_simulator/MoveRobots.h"

#include "kautham/MoveRobots.h"
#include "kautham/ProblemSetup.h"
#include "kautham/AttObj.h"
#include "kautham/DetObj.h"

//#include "syncro/MoveRobots.h"

#include <sstream>
#include <fstream>

#include "Robot.h"

#define robDim 35
#define worldDim 70
#define N_JOINTS 22

using namespace std;




class Robot{
public:
    // Variables
    std::string problemPath;
    std::string dataPath;
    uint dim;
    bool dataLoaded;
    uint num;

    uint it_pose;
    uint it_tmp;
    uint stateAction;

    uint AttDtt;

    vector< vector < float > >  fullPath;
    vector<float> puntos;

    vector< uint > flagAction;
    vector< uint > idObject;

    bool free;


    // Functions
    Robot(){
        it_pose = 0;
        it_tmp = 0;

        AttDtt = 1;
        free = true;
    }


    Robot(string problem){
        problemPath = problem;
        it_pose = 0;
        it_tmp = 0;

        AttDtt = 1;
        free = true;

    }


    void updateState( kautham::AttObj msgA, ros::ServiceClient srvClientA,
                             kautham::DetObj msgD, ros::ServiceClient srvClientD){

        if((flagAction.at(it_pose) == AttDtt) && (it_tmp != it_pose)){

            if (free){
                // Attach
                cout << "Attach object " << idObject.at(it_pose) << endl;
                msgA.request.Obj = idObject.at(it_pose);
                msgA.request.Robot = num;
                free = false;
                srvClientA.call(msgA);
                getchar();
            }else{
                // Detach
                cout << "Detach object " << endl;
                msgD.request.Robot = num;
                free = true;
                srvClientD.call(msgD);
                getchar();
            }
        }
    }

};


bool loadData(Robot* R1, Robot* R2)
{

    fstream input_R1, input_R2;

    float val;
    int flagAction, idObject;

    cout << "Loading file plans: " << endl;

    cout << R1->dataPath.c_str() << endl;
    cout << R2->dataPath.c_str() << endl;

    input_R1.open(R1->dataPath.c_str());
    input_R2.open(R2->dataPath.c_str());

    if (input_R1.is_open() && input_R2.is_open()){

        cout << "Files are open. Reading:" << endl;

        do{


            R1->puntos.clear();
            for (uint i = 0; i < robDim; i++){
                input_R1 >> val;
                R1->puntos.push_back(val);
            }

            R1->fullPath.push_back(R1->puntos);
            input_R1 >> flagAction;
            R1->flagAction.push_back(flagAction);
            input_R1 >> idObject;
            R1->idObject.push_back(idObject);

        } while (!input_R1.eof());

        do{

            R2->puntos.clear();

            for (unsigned i = 0; i < robDim; i++){
                input_R2 >> val;
                R2->puntos.push_back(val);
            }

            R2->fullPath.push_back(R2->puntos);
            input_R2 >> flagAction;
            R2->flagAction.push_back(flagAction);
            input_R2 >> idObject;
            R2->idObject.push_back(idObject);
        } while (!input_R2.eof());


        input_R1.close();
        input_R2.close();
        cout << "Data loaded, files are closed." << endl;
        R1->dataLoaded = true;
        R2->dataLoaded = true;

    }
    else
    {
        cout << "Problem with files..." << endl;
        return false;
    }

    return true;

}



int main(int argc, char** argv){

    ros::init(argc, argv, "kth_simulator");
    ros::NodeHandle n;

    Robot *R1, *R2, *Scene;
    kautham::ProblemSetup msgSetup;
    kautham::MoveRobots msgMove;
    kautham::AttObj msgAtt;
    kautham::DetObj msgDet;

    //syncro::MoveRobots msg_Syncro;

    ros::Rate loop_rate(25);
    ROS_INFO("KTH_SIMULATOR launched...");


    ros::ServiceClient srvClient_Setup = n.serviceClient<kautham::ProblemSetup>("Viewer/Kautham_Viewer/ProblemSetup");
    ros::ServiceClient srvClient_Move = n.serviceClient<kautham::MoveRobots>("Viewer/Kautham_Viewer/MoveRobots");
    ros::ServiceClient srvClient_Attach = n.serviceClient<kautham::AttObj>("Viewer/Kautham_Viewer/AttachObject");
    ros::ServiceClient srvClient_Detach = n.serviceClient<kautham::DetObj>("Viewer/Kautham_Viewer/DetachObject");

    //ros::ServiceClient srvClient_Syncro = n.serviceClient<syncro::MoveRobots>("MoveRobots");

    string Name;
    Name = argv[1];
    //cout<<"Arguments "<<Name<<std::endl;

    R1 = new Robot();
    R1->dataPath = "/home/fernando/PHD/Experiments/plans/Plan_Rr.txt";
    R1->num = 1;

    R2 = new Robot();
    R2->dataPath = "/home/fernando/PHD/Experiments/plans/Plan_Rl.txt";
    R2->num = 0;

    Scene = new Robot("/home/fernando/PHD/Experiments/xml/"+Name+".xml");
    //Scene = new Robot("/home/users/abiud.rojas/Aplicaciones/Experiments/abiud_demos/UR_AH_01/Rugby.xml");


    ROS_INFO("Loading Scene ...");
    msgSetup.request.problem.data = Scene->problemPath;
    msgSetup.request.hand = 4; //SDH = 0; SAH = 1 AHL= 4 AHR= 5
    srvClient_Setup.call(msgSetup);
    if (msgSetup.response.status){
        //Scene->dim = 16;
        Scene->dim = 44;
    }
    else{
        cout << "Problem with setup for Scene" << endl;
        //return 1;
    }

    loadData(R1, R2);



    getchar();

    bool completed_r1 = false;
    bool completed_r2 = false;

    do{

        msgMove.request.Pose.positions.clear();
        msgMove.request.Pose.positions.resize(worldDim);

        //msg_Syncro.request.pose.positions.clear();
        //msg_Syncro.request.pose.velocities.clear();
        //msg_Syncro.request.pose.accelerations.clear();

        // ROBOT RIGHT

        //cout<<"R2 ";
        if(R2->it_pose < R2->fullPath.size()){
            for (uint j = 0; j < R2->fullPath.at(R2->it_pose).size(); j++){
                //cout<<R2->fullPath.at(R2->it_pose).at(j)<<" ";
                msgMove.request.Pose.positions.at(j) = R2->fullPath.at(R2->it_pose).at(j);

                if (j > 6){
                    if((j != 13) && (j != 14) && (j != 19) && (j != 24) && (j != 29) && (j != 34)){
                        //msg_Syncro.request.pose.positions.push_back(R2->fullPath.at(R2->it_pose).at(j));
                        //msg_Syncro.request.pose.velocities.push_back(0.0);
                        //msg_Syncro.request.pose.accelerations.push_back(0.0);
          //              cout<<R2->fullPath.at(R2->it_pose).at(j)<<" ";
                    }
                }


            }
           // cout<<endl;
        }

        //cout<<"R1 ";
        if(R1->it_pose < R1->fullPath.size()){
            for (uint j = 0; j < R1->fullPath.at(R1->it_pose).size(); j++){
                msgMove.request.Pose.positions.at(j + robDim) = R1->fullPath.at(R1->it_pose).at(j);
          //      cout<<R1->fullPath.at(R1->it_pose).at(j)<<" ";

                if (j > 6){
                    if((j != 13) && (j != 14) && (j != 19) && (j != 24) && (j != 29) && (j != 34)){
                        //msg_Syncro.request.pose.positions.push_back(R1->fullPath.at(R1->it_pose).at(j));
                        //msg_Syncro.request.pose.velocities.push_back(0.0);
                        //msg_Syncro.request.pose.accelerations.push_back(0.0);
          //              cout<<R1->fullPath.at(R1->it_pose).at(j)<<" ";
                    }
                }
            }
         //   cout<<endl;
        }


        // Check for attach or detach an object
        R1->updateState(msgAtt, srvClient_Attach, msgDet, srvClient_Detach);
        R2->updateState(msgAtt, srvClient_Attach, msgDet, srvClient_Detach);


        //VIEWER
        srvClient_Move.call(msgMove);
        //srvClient_Syncro.call(msg_Syncro);


        ros::spinOnce();
        loop_rate.sleep();

        R1->it_pose++;
        R2->it_pose++;


        if((R1->it_pose == R1->fullPath.size()-1) ||
           (R2->it_pose == R2->fullPath.size()-1)){
            completed_r1 = true;
            completed_r2 = true;
        }

    }while((!completed_r1) || (!completed_r2));

    cout<<"simulation finished"<<endl;
    cout<<"press any key to exit"<<endl;
    getchar();

    return 0;
}
