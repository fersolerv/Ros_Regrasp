// Generated by gencpp from file kautham/SetGoalRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_SETGOALREQUEST_H
#define KAUTHAM_MESSAGE_SETGOALREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kautham
{
template <class ContainerAllocator>
struct SetGoalRequest_
{
  typedef SetGoalRequest_<ContainerAllocator> Type;

  SetGoalRequest_()
    : goal()  {
    }
  SetGoalRequest_(const ContainerAllocator& _alloc)
    : goal(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::kautham::SetGoalRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::SetGoalRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetGoalRequest_

typedef ::kautham::SetGoalRequest_<std::allocator<void> > SetGoalRequest;

typedef boost::shared_ptr< ::kautham::SetGoalRequest > SetGoalRequestPtr;
typedef boost::shared_ptr< ::kautham::SetGoalRequest const> SetGoalRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::SetGoalRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::SetGoalRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::SetGoalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::SetGoalRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::SetGoalRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::SetGoalRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::SetGoalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::SetGoalRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::SetGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "299570accc62e60347f54aac33d9eae5";
  }

  static const char* value(const ::kautham::SetGoalRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x299570accc62e603ULL;
  static const uint64_t static_value2 = 0x47f54aac33d9eae5ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::SetGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/SetGoalRequest";
  }

  static const char* value(const ::kautham::SetGoalRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::SetGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] goal\n\
";
  }

  static const char* value(const ::kautham::SetGoalRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::SetGoalRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGoalRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::SetGoalRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::SetGoalRequest_<ContainerAllocator>& v)
  {
    s << indent << "goal[]" << std::endl;
    for (size_t i = 0; i < v.goal.size(); ++i)
    {
      s << indent << "  goal[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.goal[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_SETGOALREQUEST_H
