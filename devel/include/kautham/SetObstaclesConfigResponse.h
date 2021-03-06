// Generated by gencpp from file kautham/SetObstaclesConfigResponse.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_SETOBSTACLESCONFIGRESPONSE_H
#define KAUTHAM_MESSAGE_SETOBSTACLESCONFIGRESPONSE_H


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
struct SetObstaclesConfigResponse_
{
  typedef SetObstaclesConfigResponse_<ContainerAllocator> Type;

  SetObstaclesConfigResponse_()
    : response(false)  {
    }
  SetObstaclesConfigResponse_(const ContainerAllocator& _alloc)
    : response(false)  {
  (void)_alloc;
    }



   typedef uint8_t _response_type;
  _response_type response;




  typedef boost::shared_ptr< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetObstaclesConfigResponse_

typedef ::kautham::SetObstaclesConfigResponse_<std::allocator<void> > SetObstaclesConfigResponse;

typedef boost::shared_ptr< ::kautham::SetObstaclesConfigResponse > SetObstaclesConfigResponsePtr;
typedef boost::shared_ptr< ::kautham::SetObstaclesConfigResponse const> SetObstaclesConfigResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "003b81baa95ab323fc1ddf3c7d0bee81";
  }

  static const char* value(const ::kautham::SetObstaclesConfigResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x003b81baa95ab323ULL;
  static const uint64_t static_value2 = 0xfc1ddf3c7d0bee81ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/SetObstaclesConfigResponse";
  }

  static const char* value(const ::kautham::SetObstaclesConfigResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool response\n\
\n\
";
  }

  static const char* value(const ::kautham::SetObstaclesConfigResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetObstaclesConfigResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::SetObstaclesConfigResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::SetObstaclesConfigResponse_<ContainerAllocator>& v)
  {
    s << indent << "response: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_SETOBSTACLESCONFIGRESPONSE_H
