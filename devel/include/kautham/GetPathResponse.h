// Generated by gencpp from file kautham/GetPathResponse.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_GETPATHRESPONSE_H
#define KAUTHAM_MESSAGE_GETPATHRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kautham/fVector.h>

namespace kautham
{
template <class ContainerAllocator>
struct GetPathResponse_
{
  typedef GetPathResponse_<ContainerAllocator> Type;

  GetPathResponse_()
    : response()  {
    }
  GetPathResponse_(const ContainerAllocator& _alloc)
    : response(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::kautham::fVector_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kautham::fVector_<ContainerAllocator> >::other >  _response_type;
  _response_type response;




  typedef boost::shared_ptr< ::kautham::GetPathResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::GetPathResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPathResponse_

typedef ::kautham::GetPathResponse_<std::allocator<void> > GetPathResponse;

typedef boost::shared_ptr< ::kautham::GetPathResponse > GetPathResponsePtr;
typedef boost::shared_ptr< ::kautham::GetPathResponse const> GetPathResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::GetPathResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::GetPathResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::GetPathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::GetPathResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetPathResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::GetPathResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetPathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::GetPathResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::GetPathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3eb38c03362ca922ecc4aed737aeab07";
  }

  static const char* value(const ::kautham::GetPathResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3eb38c03362ca922ULL;
  static const uint64_t static_value2 = 0xecc4aed737aeab07ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::GetPathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/GetPathResponse";
  }

  static const char* value(const ::kautham::GetPathResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::GetPathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fVector[] response\n\
\n\
\n\
================================================================================\n\
MSG: kautham/fVector\n\
float32[] v\n\
\n\
";
  }

  static const char* value(const ::kautham::GetPathResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::GetPathResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPathResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::GetPathResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::GetPathResponse_<ContainerAllocator>& v)
  {
    s << indent << "response[]" << std::endl;
    for (size_t i = 0; i < v.response.size(); ++i)
    {
      s << indent << "  response[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kautham::fVector_<ContainerAllocator> >::stream(s, indent + "    ", v.response[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_GETPATHRESPONSE_H
