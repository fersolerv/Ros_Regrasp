// Generated by gencpp from file kautham/MoveRobotRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_MOVEROBOTREQUEST_H
#define KAUTHAM_MESSAGE_MOVEROBOTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trajectory_msgs/JointTrajectoryPoint.h>

namespace kautham
{
template <class ContainerAllocator>
struct MoveRobotRequest_
{
  typedef MoveRobotRequest_<ContainerAllocator> Type;

  MoveRobotRequest_()
    : Robot(0)
    , Pose()  {
    }
  MoveRobotRequest_(const ContainerAllocator& _alloc)
    : Robot(0)
    , Pose(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _Robot_type;
  _Robot_type Robot;

   typedef  ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator>  _Pose_type;
  _Pose_type Pose;




  typedef boost::shared_ptr< ::kautham::MoveRobotRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::MoveRobotRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveRobotRequest_

typedef ::kautham::MoveRobotRequest_<std::allocator<void> > MoveRobotRequest;

typedef boost::shared_ptr< ::kautham::MoveRobotRequest > MoveRobotRequestPtr;
typedef boost::shared_ptr< ::kautham::MoveRobotRequest const> MoveRobotRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::MoveRobotRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::MoveRobotRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kautham

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kautham::MoveRobotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::MoveRobotRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::MoveRobotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::MoveRobotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::MoveRobotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::MoveRobotRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::MoveRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f357b25a5ad92d0a1d90874242bf02c7";
  }

  static const char* value(const ::kautham::MoveRobotRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf357b25a5ad92d0aULL;
  static const uint64_t static_value2 = 0x1d90874242bf02c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::MoveRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/MoveRobotRequest";
  }

  static const char* value(const ::kautham::MoveRobotRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::MoveRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 Robot\n\
trajectory_msgs/JointTrajectoryPoint Pose\n\
\n\
================================================================================\n\
MSG: trajectory_msgs/JointTrajectoryPoint\n\
# Each trajectory point specifies either positions[, velocities[, accelerations]]\n\
# or positions[, effort] for the trajectory to be executed.\n\
# All specified values are in the same order as the joint names in JointTrajectory.msg\n\
\n\
float64[] positions\n\
float64[] velocities\n\
float64[] accelerations\n\
float64[] effort\n\
duration time_from_start\n\
";
  }

  static const char* value(const ::kautham::MoveRobotRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::MoveRobotRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Robot);
      stream.next(m.Pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveRobotRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::MoveRobotRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::MoveRobotRequest_<ContainerAllocator>& v)
  {
    s << indent << "Robot: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.Robot);
    s << indent << "Pose: ";
    s << std::endl;
    Printer< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.Pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_MOVEROBOTREQUEST_H
