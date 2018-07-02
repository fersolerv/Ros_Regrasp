// Generated by gencpp from file kautham/ProblemSetupRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_PROBLEMSETUPREQUEST_H
#define KAUTHAM_MESSAGE_PROBLEMSETUPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>

namespace kautham
{
template <class ContainerAllocator>
struct ProblemSetupRequest_
{
  typedef ProblemSetupRequest_<ContainerAllocator> Type;

  ProblemSetupRequest_()
    : problem()
    , hand(0)  {
    }
  ProblemSetupRequest_(const ContainerAllocator& _alloc)
    : problem(_alloc)
    , hand(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _problem_type;
  _problem_type problem;

   typedef uint8_t _hand_type;
  _hand_type hand;




  typedef boost::shared_ptr< ::kautham::ProblemSetupRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::ProblemSetupRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ProblemSetupRequest_

typedef ::kautham::ProblemSetupRequest_<std::allocator<void> > ProblemSetupRequest;

typedef boost::shared_ptr< ::kautham::ProblemSetupRequest > ProblemSetupRequestPtr;
typedef boost::shared_ptr< ::kautham::ProblemSetupRequest const> ProblemSetupRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::ProblemSetupRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::ProblemSetupRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::ProblemSetupRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::ProblemSetupRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::ProblemSetupRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd25927ee97f9264156a905b08cfa95f";
  }

  static const char* value(const ::kautham::ProblemSetupRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd25927ee97f9264ULL;
  static const uint64_t static_value2 = 0x156a905b08cfa95fULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/ProblemSetupRequest";
  }

  static const char* value(const ::kautham::ProblemSetupRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String problem\n\
uint8 hand\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
";
  }

  static const char* value(const ::kautham::ProblemSetupRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.problem);
      stream.next(m.hand);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ProblemSetupRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::ProblemSetupRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::ProblemSetupRequest_<ContainerAllocator>& v)
  {
    s << indent << "problem: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.problem);
    s << indent << "hand: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hand);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_PROBLEMSETUPREQUEST_H
