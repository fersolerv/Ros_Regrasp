// Generated by gencpp from file kautham/GetLastPlanComputationTimeRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_GETLASTPLANCOMPUTATIONTIMEREQUEST_H
#define KAUTHAM_MESSAGE_GETLASTPLANCOMPUTATIONTIMEREQUEST_H


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
struct GetLastPlanComputationTimeRequest_
{
  typedef GetLastPlanComputationTimeRequest_<ContainerAllocator> Type;

  GetLastPlanComputationTimeRequest_()
    {
    }
  GetLastPlanComputationTimeRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetLastPlanComputationTimeRequest_

typedef ::kautham::GetLastPlanComputationTimeRequest_<std::allocator<void> > GetLastPlanComputationTimeRequest;

typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeRequest > GetLastPlanComputationTimeRequestPtr;
typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeRequest const> GetLastPlanComputationTimeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kautham

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/GetLastPlanComputationTimeRequest";
  }

  static const char* value(const ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetLastPlanComputationTimeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::kautham::GetLastPlanComputationTimeRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_GETLASTPLANCOMPUTATIONTIMEREQUEST_H
