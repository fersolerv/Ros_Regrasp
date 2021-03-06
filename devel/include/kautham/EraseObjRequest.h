// Generated by gencpp from file kautham/EraseObjRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_ERASEOBJREQUEST_H
#define KAUTHAM_MESSAGE_ERASEOBJREQUEST_H


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
struct EraseObjRequest_
{
  typedef EraseObjRequest_<ContainerAllocator> Type;

  EraseObjRequest_()
    : Obj(0)  {
    }
  EraseObjRequest_(const ContainerAllocator& _alloc)
    : Obj(0)  {
  (void)_alloc;
    }



   typedef uint8_t _Obj_type;
  _Obj_type Obj;




  typedef boost::shared_ptr< ::kautham::EraseObjRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::EraseObjRequest_<ContainerAllocator> const> ConstPtr;

}; // struct EraseObjRequest_

typedef ::kautham::EraseObjRequest_<std::allocator<void> > EraseObjRequest;

typedef boost::shared_ptr< ::kautham::EraseObjRequest > EraseObjRequestPtr;
typedef boost::shared_ptr< ::kautham::EraseObjRequest const> EraseObjRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::EraseObjRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::EraseObjRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::EraseObjRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::EraseObjRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::EraseObjRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::EraseObjRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::EraseObjRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::EraseObjRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::EraseObjRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2998bf4166991d461ddb2a46145e4ad2";
  }

  static const char* value(const ::kautham::EraseObjRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2998bf4166991d46ULL;
  static const uint64_t static_value2 = 0x1ddb2a46145e4ad2ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::EraseObjRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/EraseObjRequest";
  }

  static const char* value(const ::kautham::EraseObjRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::EraseObjRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 Obj\n\
";
  }

  static const char* value(const ::kautham::EraseObjRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::EraseObjRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Obj);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EraseObjRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::EraseObjRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::EraseObjRequest_<ContainerAllocator>& v)
  {
    s << indent << "Obj: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Obj);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_ERASEOBJREQUEST_H
