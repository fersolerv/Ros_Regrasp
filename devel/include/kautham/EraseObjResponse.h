// Generated by gencpp from file kautham/EraseObjResponse.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_ERASEOBJRESPONSE_H
#define KAUTHAM_MESSAGE_ERASEOBJRESPONSE_H


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
struct EraseObjResponse_
{
  typedef EraseObjResponse_<ContainerAllocator> Type;

  EraseObjResponse_()
    : status(false)  {
    }
  EraseObjResponse_(const ContainerAllocator& _alloc)
    : status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;




  typedef boost::shared_ptr< ::kautham::EraseObjResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::EraseObjResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EraseObjResponse_

typedef ::kautham::EraseObjResponse_<std::allocator<void> > EraseObjResponse;

typedef boost::shared_ptr< ::kautham::EraseObjResponse > EraseObjResponsePtr;
typedef boost::shared_ptr< ::kautham::EraseObjResponse const> EraseObjResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::EraseObjResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::EraseObjResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::EraseObjResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::EraseObjResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::EraseObjResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::EraseObjResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::EraseObjResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::EraseObjResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::EraseObjResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a1255d4d998bd4d6585c64639b5ee9a";
  }

  static const char* value(const ::kautham::EraseObjResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a1255d4d998bd4dULL;
  static const uint64_t static_value2 = 0x6585c64639b5ee9aULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::EraseObjResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/EraseObjResponse";
  }

  static const char* value(const ::kautham::EraseObjResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::EraseObjResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status\n\
";
  }

  static const char* value(const ::kautham::EraseObjResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::EraseObjResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EraseObjResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::EraseObjResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::EraseObjResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_ERASEOBJRESPONSE_H
