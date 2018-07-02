// Generated by gencpp from file kautham/RemoveObstacleRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_REMOVEOBSTACLEREQUEST_H
#define KAUTHAM_MESSAGE_REMOVEOBSTACLEREQUEST_H


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
struct RemoveObstacleRequest_
{
  typedef RemoveObstacleRequest_<ContainerAllocator> Type;

  RemoveObstacleRequest_()
    : index(0)  {
    }
  RemoveObstacleRequest_(const ContainerAllocator& _alloc)
    : index(0)  {
  (void)_alloc;
    }



   typedef int64_t _index_type;
  _index_type index;




  typedef boost::shared_ptr< ::kautham::RemoveObstacleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::RemoveObstacleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RemoveObstacleRequest_

typedef ::kautham::RemoveObstacleRequest_<std::allocator<void> > RemoveObstacleRequest;

typedef boost::shared_ptr< ::kautham::RemoveObstacleRequest > RemoveObstacleRequestPtr;
typedef boost::shared_ptr< ::kautham::RemoveObstacleRequest const> RemoveObstacleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::RemoveObstacleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::RemoveObstacleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::RemoveObstacleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::RemoveObstacleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a92c772b35d41f76733d8eb9779b0e1";
  }

  static const char* value(const ::kautham::RemoveObstacleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a92c772b35d41f7ULL;
  static const uint64_t static_value2 = 0x6733d8eb9779b0e1ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/RemoveObstacleRequest";
  }

  static const char* value(const ::kautham::RemoveObstacleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 index\n\
";
  }

  static const char* value(const ::kautham::RemoveObstacleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RemoveObstacleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::RemoveObstacleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::RemoveObstacleRequest_<ContainerAllocator>& v)
  {
    s << indent << "index: ";
    Printer<int64_t>::stream(s, indent + "  ", v.index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_REMOVEOBSTACLEREQUEST_H