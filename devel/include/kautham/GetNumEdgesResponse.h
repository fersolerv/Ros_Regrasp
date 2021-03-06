// Generated by gencpp from file kautham/GetNumEdgesResponse.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_GETNUMEDGESRESPONSE_H
#define KAUTHAM_MESSAGE_GETNUMEDGESRESPONSE_H


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
struct GetNumEdgesResponse_
{
  typedef GetNumEdgesResponse_<ContainerAllocator> Type;

  GetNumEdgesResponse_()
    : num(0)  {
    }
  GetNumEdgesResponse_(const ContainerAllocator& _alloc)
    : num(0)  {
  (void)_alloc;
    }



   typedef int32_t _num_type;
  _num_type num;




  typedef boost::shared_ptr< ::kautham::GetNumEdgesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::GetNumEdgesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetNumEdgesResponse_

typedef ::kautham::GetNumEdgesResponse_<std::allocator<void> > GetNumEdgesResponse;

typedef boost::shared_ptr< ::kautham::GetNumEdgesResponse > GetNumEdgesResponsePtr;
typedef boost::shared_ptr< ::kautham::GetNumEdgesResponse const> GetNumEdgesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::GetNumEdgesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::GetNumEdgesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetNumEdgesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetNumEdgesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54b3c80efd6fae6e6ffff8a4b9facd69";
  }

  static const char* value(const ::kautham::GetNumEdgesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54b3c80efd6fae6eULL;
  static const uint64_t static_value2 = 0x6ffff8a4b9facd69ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/GetNumEdgesResponse";
  }

  static const char* value(const ::kautham::GetNumEdgesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 num\n\
\n\
";
  }

  static const char* value(const ::kautham::GetNumEdgesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetNumEdgesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::GetNumEdgesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::GetNumEdgesResponse_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_GETNUMEDGESRESPONSE_H
