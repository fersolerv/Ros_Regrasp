#include <iostream>

#include <sstream>
#include <fstream>
#define robDim 35
#define worldDim 70
#define N_JOINTS 22

#include "Robot.h"

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
        //problemPath = problem;
        it_pose = 0;
        it_tmp = 0;

        AttDtt = 1;
        free = true;

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
                /*if (input_R1.eof()){
                    break;
                }*/


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

                /*if (input_R2.eof()){
                    break;
                }*/

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

    ofstream aR1, aR2, aR1S, aR2S;

    //bool Simu = true;

    Robot *R1, *R2, *R1S, *R2S;


    ////REAL

    aR1.open("/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/Planes/aR1.txt");
    aR2.open("/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/Planes/aR2.txt");


    R1 = new Robot();
    R1->dataPath = "/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/R1SolutionPlan.txt";
    R1->num = 1;

    R2 = new Robot();
    R2->dataPath = "/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/R2SolutionPlan.txt";
    R2->num = 0;


    aR1S.open("/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/Planes/aR1S.txt");
    aR2S.open("/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/Planes/aR2S.txt");

    R1S = new Robot();
    R1S->dataPath = "/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/R1SolutionPlanS.txt";
    R1S->num = 1;

    R2S = new Robot();
    R2S->dataPath = "/home/users/abiud.rojas/Aplicaciones/Experiments/DatosGA2H/R2SolutionPlanS.txt";
    R2S->num = 0;


    loadData(R1, R2);
    loadData(R1S, R2S);

    // ROBOT RIGHT

    for (uint i = 0; i < R1->fullPath.size() - 1 ; i++){
        for (uint j = 0; j < R1->fullPath.at(i).size(); j++){
            aR1<<R1->fullPath.at(i).at(j)<<" ";
        }
        aR1<<endl;
        aR1<<R1->flagAction.at(i)<<endl;
        aR1<<R1->idObject.at(i)<<endl;

        /*if( i < R1->fullPath.size() - 2 ){
            aR1<<0<<endl;
            aR1<<0<<endl;
        }
        else{
            aR1<<1<<endl;
            aR1<<1<<endl;
        }*/
    }


    for (int i = R1->fullPath.size() - 2; i >= 0; i--){
        for (uint j = 0; j < R1->fullPath.at(i).size(); j++){
            aR1<<R1->fullPath.at(i).at(j)<<" ";
        }
        aR1<<endl;
        aR1<<R1->flagAction.at(i)<<endl;
        aR1<<R1->idObject.at(i)<<endl;

    }


    //r2

    for (uint i = 0; i < R2->fullPath.size() - 1; i++){
        for (uint j = 0; j < R2->fullPath.at(i).size(); j++){
            aR2<<R2->fullPath.at(i).at(j)<<" ";
        }
        aR2<<endl;
        aR2<<R2->flagAction.at(i)<<endl;
        aR2<<R2->idObject.at(i)<<endl;
    }

    for (int i = R2->fullPath.size() - 2; i >= 0; i--){
        for (uint j = 0; j < R2->fullPath.at(i).size(); j++){
            aR2<<R2->fullPath.at(i).at(j)<<" ";
        }
        aR2<<endl;
        aR2<<R2->flagAction.at(i)<<endl;
        aR2<<R2->idObject.at(i)<<endl;
    }

    //SIMULA

    for (uint i = 0; i < R1S->fullPath.size() - 1 ; i++){
        for (uint j = 0; j < R1S->fullPath.at(i).size(); j++){
            aR1S<<R1S->fullPath.at(i).at(j)<<" ";
        }
        aR1S<<endl;
        aR1S<<R1S->flagAction.at(i)<<endl;
        aR1S<<R1S->idObject.at(i)<<endl;

        /*if( i < R1->fullPath.size() - 2 ){
            aR1<<0<<endl;
            aR1<<0<<endl;
        }
        else{
            aR1<<1<<endl;
            aR1<<1<<endl;
        }*/
    }


    for (int i = R1S->fullPath.size() - 2; i >= 0; i--){
        for (uint j = 0; j < R1S->fullPath.at(i).size(); j++){
            aR1S<<R1S->fullPath.at(i).at(j)<<" ";
        }
        aR1S<<endl;
        aR1S<<R1S->flagAction.at(i)<<endl;
        aR1S<<R1S->idObject.at(i)<<endl;

    }


    //r2

    for (uint i = 0; i < R2S->fullPath.size() - 1; i++){
        for (uint j = 0; j < R2S->fullPath.at(i).size(); j++){
            aR2S<<R2S->fullPath.at(i).at(j)<<" ";
        }
        aR2S<<endl;
        aR2S<<R2S->flagAction.at(i)<<endl;
        aR2S<<R2S->idObject.at(i)<<endl;
    }

    for (int i = R2S->fullPath.size() - 2; i >= 0; i--){
        for (uint j = 0; j < R2S->fullPath.at(i).size(); j++){
            aR2S<<R2S->fullPath.at(i).at(j)<<" ";
        }
        aR2S<<endl;
        aR2S<<R2S->flagAction.at(i)<<endl;
        aR2S<<R2S->idObject.at(i)<<endl;
    }


    aR1.close();
    aR2.close();
    aR1S.close();
    aR2S.close();

    return 0;
}
