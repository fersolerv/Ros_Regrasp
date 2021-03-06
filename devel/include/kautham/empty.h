// Generated by gencpp from file kautham/empty.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_EMPTY_H
#define KAUTHAM_MESSAGE_EMPTY_H

#include <ros/service_traits.h>


#include <kautham/emptyRequest.h>
#include <kautham/emptyResponse.h>


namespace kautham
{

struct empty
{

typedef emptyRequest Request;
typedef emptyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct empty
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::empty > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::kautham::empty&) { return value(); }
};

template<>
struct DataType< ::kautham::empty > {
  static const char* value()
  {
    return "kautham/empty";
  }

  static const char* value(const ::kautham::empty&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::emptyRequest> should match 
// service_traits::MD5Sum< ::kautham::empty > 
template<>
struct MD5Sum< ::kautham::emptyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::empty >::value();
  }
  static const char* value(const ::kautham::emptyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::emptyRequest> should match 
// service_traits::DataType< ::kautham::empty > 
template<>
struct DataType< ::kautham::emptyRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::empty >::value();
  }
  static const char* value(const ::kautham::emptyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::emptyResponse> should match 
// service_traits::MD5Sum< ::kautham::empty > 
template<>
struct MD5Sum< ::kautham::emptyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::empty >::value();
  }
  static const char* value(const ::kautham::emptyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::emptyResponse> should match 
// service_traits::DataType< ::kautham::empty > 
template<>
struct DataType< ::kautham::emptyResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::empty >::value();
  }
  static const char* value(const ::kautham::emptyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_EMPTY_H
