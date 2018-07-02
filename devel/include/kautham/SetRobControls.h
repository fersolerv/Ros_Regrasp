// Generated by gencpp from file kautham/SetRobControls.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_SETROBCONTROLS_H
#define KAUTHAM_MESSAGE_SETROBCONTROLS_H

#include <ros/service_traits.h>


#include <kautham/SetRobControlsRequest.h>
#include <kautham/SetRobControlsResponse.h>


namespace kautham
{

struct SetRobControls
{

typedef SetRobControlsRequest Request;
typedef SetRobControlsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetRobControls
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::SetRobControls > {
  static const char* value()
  {
    return "70a7c4a4236b2afb69f24ca18116c470";
  }

  static const char* value(const ::kautham::SetRobControls&) { return value(); }
};

template<>
struct DataType< ::kautham::SetRobControls > {
  static const char* value()
  {
    return "kautham/SetRobControls";
  }

  static const char* value(const ::kautham::SetRobControls&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::SetRobControlsRequest> should match 
// service_traits::MD5Sum< ::kautham::SetRobControls > 
template<>
struct MD5Sum< ::kautham::SetRobControlsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetRobControls >::value();
  }
  static const char* value(const ::kautham::SetRobControlsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetRobControlsRequest> should match 
// service_traits::DataType< ::kautham::SetRobControls > 
template<>
struct DataType< ::kautham::SetRobControlsRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::SetRobControls >::value();
  }
  static const char* value(const ::kautham::SetRobControlsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::SetRobControlsResponse> should match 
// service_traits::MD5Sum< ::kautham::SetRobControls > 
template<>
struct MD5Sum< ::kautham::SetRobControlsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetRobControls >::value();
  }
  static const char* value(const ::kautham::SetRobControlsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetRobControlsResponse> should match 
// service_traits::DataType< ::kautham::SetRobControls > 
template<>
struct DataType< ::kautham::SetRobControlsResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::SetRobControls >::value();
  }
  static const char* value(const ::kautham::SetRobControlsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_SETROBCONTROLS_H