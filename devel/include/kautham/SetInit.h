// Generated by gencpp from file kautham/SetInit.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_SETINIT_H
#define KAUTHAM_MESSAGE_SETINIT_H

#include <ros/service_traits.h>


#include <kautham/SetInitRequest.h>
#include <kautham/SetInitResponse.h>


namespace kautham
{

struct SetInit
{

typedef SetInitRequest Request;
typedef SetInitResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetInit
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::SetInit > {
  static const char* value()
  {
    return "f934e3a24582141264303506bb07b80d";
  }

  static const char* value(const ::kautham::SetInit&) { return value(); }
};

template<>
struct DataType< ::kautham::SetInit > {
  static const char* value()
  {
    return "kautham/SetInit";
  }

  static const char* value(const ::kautham::SetInit&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::SetInitRequest> should match 
// service_traits::MD5Sum< ::kautham::SetInit > 
template<>
struct MD5Sum< ::kautham::SetInitRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetInit >::value();
  }
  static const char* value(const ::kautham::SetInitRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetInitRequest> should match 
// service_traits::DataType< ::kautham::SetInit > 
template<>
struct DataType< ::kautham::SetInitRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::SetInit >::value();
  }
  static const char* value(const ::kautham::SetInitRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::SetInitResponse> should match 
// service_traits::MD5Sum< ::kautham::SetInit > 
template<>
struct MD5Sum< ::kautham::SetInitResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetInit >::value();
  }
  static const char* value(const ::kautham::SetInitResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetInitResponse> should match 
// service_traits::DataType< ::kautham::SetInit > 
template<>
struct DataType< ::kautham::SetInitResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::SetInit >::value();
  }
  static const char* value(const ::kautham::SetInitResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_SETINIT_H