// Generated by gencpp from file kautham/OpenProblemRequest.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_OPENPROBLEMREQUEST_H
#define KAUTHAM_MESSAGE_OPENPROBLEMREQUEST_H


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
struct OpenProblemRequest_
{
  typedef OpenProblemRequest_<ContainerAllocator> Type;

  OpenProblemRequest_()
    : problem()
    , dir()  {
    }
  OpenProblemRequest_(const ContainerAllocator& _alloc)
    : problem(_alloc)
    , dir(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _problem_type;
  _problem_type problem;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _dir_type;
  _dir_type dir;




  typedef boost::shared_ptr< ::kautham::OpenProblemRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kautham::OpenProblemRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OpenProblemRequest_

typedef ::kautham::OpenProblemRequest_<std::allocator<void> > OpenProblemRequest;

typedef boost::shared_ptr< ::kautham::OpenProblemRequest > OpenProblemRequestPtr;
typedef boost::shared_ptr< ::kautham::OpenProblemRequest const> OpenProblemRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kautham::OpenProblemRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kautham::OpenProblemRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kautham::OpenProblemRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kautham::OpenProblemRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::OpenProblemRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kautham::OpenProblemRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::OpenProblemRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kautham::OpenProblemRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kautham::OpenProblemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9521ec51167b191f73c36885ee6ead13";
  }

  static const char* value(const ::kautham::OpenProblemRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9521ec51167b191fULL;
  static const uint64_t static_value2 = 0x73c36885ee6ead13ULL;
};

template<class ContainerAllocator>
struct DataType< ::kautham::OpenProblemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kautham/OpenProblemRequest";
  }

  static const char* value(const ::kautham::OpenProblemRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kautham::OpenProblemRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string problem\n\
string[] dir\n\
";
  }

  static const char* value(const ::kautham::OpenProblemRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kautham::OpenProblemRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.problem);
      stream.next(m.dir);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OpenProblemRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kautham::OpenProblemRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kautham::OpenProblemRequest_<ContainerAllocator>& v)
  {
    s << indent << "problem: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.problem);
    s << indent << "dir[]" << std::endl;
    for (size_t i = 0; i < v.dir.size(); ++i)
    {
      s << indent << "  dir[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dir[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAUTHAM_MESSAGE_OPENPROBLEMREQUEST_H
