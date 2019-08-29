#include "Robot.h"

using namespace std;

namespace romoco
{

Robot::Robot()
{

}

Robot::Robot(string problem)
{
  problemPath = problem;
  it_pose = 0;
  changeAction = false;
  optimization = false;
  //it_task = 0;

  searchState = 0;
  endAnalyze = false;

  // ToDo: sacar informacion del problema
  handDim = 2;
  handGraspPose.resize(handDim);

  stateAction = 0;
  posAnt = 0;
  direction = 0;

  stateActionW = 0;
  posAntW = 0;
  directionW = 0;
}

bool Robot::getNextRobotPose(void)
{
  if (it_pose < fullPath.size())
  {
    for (unsigned i = 0; i < dim; i++)
    {
      pose.at(i) = fullPath.at(it_pose).at(i);
    }

    unsigned tmpPose = 0;
    for (unsigned i = 0; i < fullPathSizes.size(); i++)
    {
      tmpPose += fullPathSizes.at(i) - 1;

      if (it_pose == tmpPose)
      {
        changeAction = true;
        break;
      }
    }

    it_pose++;
    return true;
  }
  else
    return false;
}

unsigned Robot::computeRobotPriority(void)
{

  //if ((fullPath.size() - it_pose) > (fullRobotInactivePath.size() - it_robotInactivePose))
  if (num)
    priority = 1;
  else
    priority = 0;

  std::cout << "R" << num << " priority: " << priority << std::endl;

  return 0;
}

Robot::~Robot()
{

}

void Robot::updateState( kautham::AttObj msgA, ros::ServiceClient srvClientA,
                    kautham::DetObj msgD, ros::ServiceClient srvClientD)
{

  direction = it_pose - posAnt;
  //cout << "Robot_" << num << endl;
  //cout << "posAnt: " << posAnt << ", direction: " << direction << endl;
  posAnt = it_pose;
  //cout << "flagAction: " << flagAction.at(it_pose) << endl;

  switch (stateAction)
  {
    // Free
    case 0:
    {
      if (flagAction.at(it_pose))
      {
        // Next State
        if (direction == 1)
        {
          stateAction = 1; // Busy
          // Attach
          cout << "Attach object " << idObject.at(it_pose) << endl;
          msgA.request.Obj = idObject.at(it_pose);
          msgA.request.Robot = num;
          srvClientA.call(msgA);
          getchar();
          //srvClientAW.call(msgA);
        }
        else if (direction == -1)
        {
          stateAction = 2; // DummyF
          // Attach
          cout << "Attach object " << idObject.at(it_pose) << endl;
          msgA.request.Obj = idObject.at(it_pose);
          msgA.request.Robot = num;
          srvClientA.call(msgA);
          getchar();
          //srvClientAW.call(msgA);
        }
      }
      break;
    }
      // Busy
    case 1:
    {
      if (flagAction.at(it_pose))
      {
        // Next State
        if (direction == 1)
        {
          stateAction = 0; // Free
          // Detach
          cout << "Detach object " << endl;
          msgD.request.Robot = num;
          srvClientD.call(msgD);
          getchar();
          //srvClientDW.call(msgD);
        }
        else if (direction == -1)
        {
          stateAction = 3; // DummyB
        }
      }
      break;
    }
      // DummyF
    case 2:
    {
      // Next State
      if (direction == 1)
      {
        stateAction = 0; // Free
        // Detach
        cout << "Detach object " << endl;
        msgD.request.Robot = num;
        srvClientD.call(msgD);
        getchar();
        //srvClientDW.call(msgD);
      }
      else if (direction == -1)
      {
        stateAction = 1; // Busy
      }

      break;
    }
      // DummyB
    case 3:
    {
      // Next State
      if (direction == 1)
      {
        stateAction = 1; // Busy
      }
      else if (direction == -1)
      {
        stateAction = 0; // Free
        // Detach
        cout << "Detach object " << endl;
        msgD.request.Robot = num;
        srvClientD.call(msgD);
        getchar();
        //srvClientDW.call(msgD);
      }
      break;
    }
  }

}

void Robot::updateStateW( kautham::AttObj msgA, ros::ServiceClient srvClientA,
                    kautham::DetObj msgD, ros::ServiceClient srvClientD, unsigned poseW)
{

  directionW = poseW - posAntW;

  //cout << "Robot_" << num << endl;
  //cout << "posAntW: " << posAntW << ", directionW: " << directionW << endl;

  posAntW = poseW;

  //cout << "flagAction: " << flagAction.at(poseW) << endl;

  switch (stateActionW)
  {
    // Free
    case 0:
    {
      if (flagAction.at(poseW))
      {
        // Next State
        if (directionW == 1)
        {
          stateActionW = 1; // Busy
          // Attach
          cout << "W* "<< num << " Attach object " << idObject.at(poseW) << endl;
          msgA.request.Obj = idObject.at(poseW);
          msgA.request.Robot = num;
          srvClientA.call(msgA);

          //srvClientAW.call(msgA);
        }
        else if (directionW == -1)
        {
          stateActionW = 2; // DummyF
          // Attach
          cout << "W* "<< num << " Attach object " << idObject.at(poseW) << endl;
          msgA.request.Obj = idObject.at(poseW);
          msgA.request.Robot = num;
          srvClientA.call(msgA);

          //srvClientAW.call(msgA);
        }
      }
      break;
    }
      // Busy
    case 1:
    {
      if (flagAction.at(poseW))
      {
        // Next State
        if (directionW == 1)
        {
          stateActionW = 0; // Free
          // Detach
          cout << "W* "<< num << " Detach object " << endl;
          msgD.request.Robot = num;
          srvClientD.call(msgD);
          //srvClientDW.call(msgD);
        }
        else if (directionW == -1)
        {
          stateActionW = 3; // DummyB
        }
      }
      break;
    }
      // DummyF
    case 2:
    {
      // Next State
      if (directionW == 1)
      {
        stateActionW = 0; // Free
        // Detach
        cout << "W* "<< num << " Detach object " << endl;
        msgD.request.Robot = num;
        srvClientD.call(msgD);
        //srvClientDW.call(msgD);
      }
      else if (directionW == -1)
      {
        stateActionW = 1; // Busy
      }

      break;
    }
      // DummyB
    case 3:
    {
      // Next State
      if (directionW == 1)
      {
        stateActionW = 1; // Busy
      }
      else if (directionW == -1)
      {
        stateActionW = 0; // Free
        // Detach
        cout << "W* "<< num << " Detach object " << endl;
        msgD.request.Robot = num;
        srvClientD.call(msgD);
        //srvClientDW.call(msgD);
      }
      break;
    }
  }

}

bool Robot::changeSearchDirection(bool status)
{

#ifdef SEARCHPRIORITY
  if (priority)
  {
    switch (searchState)
    {
      case 0:
        if (status)
        {
          if (spin)
          {
            spin = false;
            searchState = 6;
          }
          else
          {
            searchState = 0;
          }
        }
        else
        {
          searchState = 1;
        }
        break;
      case 1:
        if (status)
        {
          searchState = 0;
        }
        else
        {
          searchState = 2;
        }
        break;
      case 2:
        if (status)
        {
          searchState = 0;
        }
        else
        {
          searchState = 3;
        }
        break;
      case 3:
        if (status)
        {
          searchState = 2;
        }
        else
        {
          searchState = 4;
        }
        break;
      case 4:
        if (status)
        {
          searchState = 2;
        }
        else
        {
          searchState = 5;
        }
        break;
      case 5:
        if (status)
        {
          searchState = 4;
        }
        else
        {
          searchState = 6;
        }
        break;
      case 6:
        if (status)
        {
          searchState = 4;
        }
        else
        {
          searchState = 7;
        }
        break;
      case 7:
        if (status)
        {
          searchState = 6;
        }
        else
        {
          spin = true;
          searchState = 0;
        }
        break;
    }
  }
  else
  {
    switch (searchState)
    {
      case 0:
        if (status)
        {
          if (spin)
          {
            spin = false;
            searchState = 2;
          }
          else
          {
            searchState = 0;
          }
        }
        else
        {
          searchState = 7;
        }
        break;
      case 1:
        if (status)
        {
          searchState = 2;
        }
        else
        {
          spin = true;
          searchState = 0;
        }
        break;
      case 2:
        if (status)
        {
          searchState = 4;
        }
        else
        {
          searchState = 1;
        }
        break;
      case 3:
        if (status)
        {
          searchState = 4;
        }
        else
        {
          searchState = 2;
        }
        break;
      case 4:
        if (status)
        {
          searchState = 6;
        }
        else
        {
          searchState = 3;
        }
        break;
      case 5:
        if (status)
        {
          searchState = 6;
        }
        else
        {
          searchState = 4;
        }
        break;
      case 6:
        if (status)
        {
          searchState = 0;
        }
        else
        {
          searchState = 5;
        }
        break;
      case 7:
        if (status)
        {
          searchState = 0;
        }
        else
        {
          searchState = 6;
        }
        break;
    }
  }
#else
  if (priority)
  {
    switch (searchState)
    {
      case 0:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 1;
      }
      break;
      case 1:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 7;
      }
      break;
      case 2:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 6;
      }
      break;
      case 3:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 5;
      }
      break;
      case 4:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 0;
      }
      break;
      case 5:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 5;
      }
      break;
      case 6:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 3;
      }
      break;
      case 7:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        spin = true;
        searchState = 2;
      }
      break;
    }
  }
  else
  {
    switch (searchState)
    {
      case 0:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 7;
      }
      break;
      case 1:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 6;
      }
      break;
      case 2:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 5;
      }
      break;
      case 3:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 4;
      }
      break;
      case 4:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 0;
      }
      break;
      case 5:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 3;
      }
      break;
      case 6:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 2;
      }
      break;
      case 7:
      if(status)
      {
        searchState = 0;
      }
      else
      {
        searchState = 1;
      }
      break;
    }
  }
#endif

  switch (searchState)
  {
    case 0:
      searchDirection.first = 1;
      searchDirection.second = 1;
      optimization = false;
      break;
    case 1:
      searchDirection.first = 0;
      searchDirection.second = 1;
      optimization = false;
      break;
    case 2:
      searchDirection.first = -1;
      searchDirection.second = 1;
      optimization = true;
      break;
    case 3:
      searchDirection.first = -1;
      searchDirection.second = 0;
      optimization = true;
      break;
    case 4:
      searchDirection.first = -1;
      searchDirection.second = -1;
      optimization = true;
      break;
    case 5:
      searchDirection.first = 0;
      searchDirection.second = -1;
      optimization = true;
      break;
    case 6:
      searchDirection.first = 1;
      searchDirection.second = -1;
      optimization = true;
      break;
    case 7:
      searchDirection.first = 1;
      searchDirection.second = 0;
      optimization = false;
      break;
  }

  //cout << "Direction: " << searchDirection.first << ", " << searchDirection.second << endl;

  return true;
}

} /* namespace romoco */
