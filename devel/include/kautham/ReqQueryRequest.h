// Generated by gencpp from file kautham/ReqQueryRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_REQQUERYREQUEST_H
#define KAUTHAM_MESSAGE_REQQUERYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trajectory_msgs/JointTrajectoryPoint.h>
#include <trajectory_msgs/JointTrajectoryPoint.h>

namespace kautham
{
template <class ContainerAllocator>
struct ReqQueryRequest_
{
  typedef ReqQueryRequest_<ContainerAllocator> Type;

  ReqQueryRequest_()
    : Init()
    , Goal()  {
    }
  ReqQueryRequest_(const ContainerAllocator& _alloc)
    : Init(_alloc)
    , Goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator>  _Init_type;
  _Init_type Init;

   typedef  ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator>  _Goal_type;
  _Goal_type Goal;




  typedef boost::shared_ptr< ::kautham::ReqQueryRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::ReqQueryRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReqQueryRequest_

typedef ::kautham::ReqQueryRequest_<std::allocator<void> > ReqQueryRequest;

typedef boost::shared_ptr< ::kautham::ReqQueryRequest > ReqQueryRequestPtr;
typedef boost::shared_ptr< ::kautham::ReqQueryRequest const> ReqQueryRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::ReqQueryRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::ReqQueryRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::ReqQueryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::ReqQueryRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::ReqQueryRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::ReqQueryRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::ReqQueryRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::ReqQueryRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::ReqQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96f97043829a32143157249427fa1413";
  }

  static const char* value(const ::kautham::ReqQueryRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96f97043829a3214ULL;
  static const uint64_t static_value2 = 0x3157249427fa1413ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::ReqQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/ReqQueryRequest";
  }

  static const char* value(const ::kautham::ReqQueryRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::ReqQueryRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "trajectory_msgs/JointTrajectoryPoint Init\n\
trajectory_msgs/JointTrajectoryPoint Goal\n\
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

  static const char* value(const ::kautham::ReqQueryRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::ReqQueryRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Init);
      stream.next(m.Goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReqQueryRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::ReqQueryRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::ReqQueryRequest_<ContainerAllocator>& v)
  {
    s << indent << "Init: ";
    s << std::endl;
    Printer< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.Init);
    s << indent << "Goal: ";
    s << std::endl;
    Printer< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.Goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_REQQUERYREQUEST_H
