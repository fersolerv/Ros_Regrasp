#ifndef ROBOT_H_
#define ROBOT_H_

#include "ros/ros.h"

#include "kautham/ReqPlan.h"
#include "kautham/AttObj.h"
#include "kautham/DetObj.h"

//#undef SEARCHPRIORITY
#define SEARCHPRIORITY

#include <utility>
#include <list>

using namespace std;

namespace kth_simulator
{

struct cellExplore {
  pair <unsigned, unsigned > cell;
  bool status;
};

class Robot
{
public:
  // Variables
  std::string problemPath;
  std::string dataPath;
  bool dataLoaded;

  bool optimization;
  unsigned dim;
  unsigned num;
  unsigned priority;

  unsigned robotInactiveDim;

  /*
  struct SolPath {
    unsigned robotNum;
    unsigned goal;
    vector< vector < float > >  path;
    // action = true ==> going to take
    // action = false ==> going to release
    bool action;
  };*/

  list<cellExplore> cells;

  //vector<SolPath> paths;

  /******************************************/
  //SolPath actPath;
  //SolPath actRobotInactivePath;

  vector< float > pose;
  unsigned it_pose;

  vector< float> robotInactivePose;
  unsigned it_robotInactivePose;
  /******************************************/
  // For analyze in real time
  unsigned it_analyzePose;

  vector< vector < float > >  fullPath;
  vector< unsigned long > fullPathSizes;

  vector< int > flagAction;
  vector< unsigned > idObject;

  unsigned it_robotInactiveAnalyzePose;

  vector< vector < float > >  fullRobotInactivePath;
  vector< unsigned long > fullRobotInactivePathSizes;

  vector< int > RobotInactiveflagAction;
  vector< unsigned > RobotInactiveidObject;

  pair<int, int> searchDirection;
  unsigned searchState;
  bool spin;

  bool endAnalyze;
  unsigned collisionsCheckMade;
  unsigned totalCollisionCheckMade;

  unsigned safePose;
  /******************************************/

  unsigned stateAction;
  int direction;
  unsigned posAnt;

  unsigned stateActionW;
    int directionW;
    unsigned posAntW;

  // To help visualization
  bool changeAction;
  std::vector< float > handGraspPose;
  unsigned handDim;

  // TAKE or RELEASE
  bool handAction;
  vector< int >handTask;

  // In patch mode, information about analyze procedure
  bool AnalicePlan;
  bool collision;
  bool avoid;
  unsigned stepLoss;

  // In patch mode, step to send information to robots
  // FAST (2), SLOW (1), STOP (0)
  //unsigned speed;

  // Information about the order of the task
  //vector< int > task;
  //unsigned it_task;

  /* Real time mode */
  //vector< SolPath > robotInactivePaths;
  //vector< int > robotInactiveTask;

  // Functions
  Robot();
  Robot( string problem_path );
  virtual ~Robot();

  bool setActualGoalAction(unsigned goal, bool action);

  // A function that sets the variable pose with a new robot pose
  // Return true if there is a new pose
  // else return false and pose does not change
  //bool getNextRobotPose( unsigned step );

  //bool getNextRobotPose( SolPath path, unsigned& it, vector< float >& pose, unsigned step = 1);

  bool getNextRobotPose( void );

  // A function that compute priority order to execute moves
  // Robot with priority 0 execute moves freedomly
  // Robot with priority 1 execute moves slowly
  unsigned computeRobotPriority( void );

  //bool getPlan( vector< SolPath > setPaths, vector< std::vector < float > >& full, vector< unsigned long >& sizes );

  bool changeSearchDirection (bool status);

  //bool analyzeAction( void );

  void updateState( kautham::AttObj msgA, ros::ServiceClient srvClientA,
                      kautham::DetObj msgD, ros::ServiceClient srvClientD);

  void updateStateW( kautham::AttObj msgA, ros::ServiceClient srvClientA,
                        kautham::DetObj msgD, ros::ServiceClient srvClientD, unsigned poseW);


};

} /* namespace romoco */
#endif /* ROBOT_H_ */
