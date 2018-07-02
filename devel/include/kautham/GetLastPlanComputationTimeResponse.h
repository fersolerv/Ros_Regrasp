// Generated by gencpp from file kautham/GetLastPlanComputationTimeResponse.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_GETLASTPLANCOMPUTATIONTIMERESPONSE_H
#define KAUTHAM_MESSAGE_GETLASTPLANCOMPUTATIONTIMERESPONSE_H


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
struct GetLastPlanComputationTimeResponse_
{
  typedef GetLastPlanComputationTimeResponse_<ContainerAllocator> Type;

  GetLastPlanComputationTimeResponse_()
    : time(0.0)  {
    }
  GetLastPlanComputationTimeResponse_(const ContainerAllocator& _alloc)
    : time(0.0)  {
  (void)_alloc;
    }



   typedef double _time_type;
  _time_type time;




  typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetLastPlanComputationTimeResponse_

typedef ::kautham::GetLastPlanComputationTimeResponse_<std::allocator<void> > GetLastPlanComputationTimeResponse;

typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeResponse > GetLastPlanComputationTimeResponsePtr;
typedef boost::shared_ptr< ::kautham::GetLastPlanComputationTimeResponse const> GetLastPlanComputationTimeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "be5310e7aa4c90cdee120add91648cee";
  }

  static const char* value(const ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbe5310e7aa4c90cdULL;
  static const uint64_t static_value2 = 0xee120add91648ceeULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/GetLastPlanComputationTimeResponse";
  }

  static const char* value(const ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 time\n\
\n\
";
  }

  static const char* value(const ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetLastPlanComputationTimeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::GetLastPlanComputationTimeResponse_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_GETLASTPLANCOMPUTATIONTIMERESPONSE_H
