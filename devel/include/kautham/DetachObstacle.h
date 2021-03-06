// Generated by gencpp from file kautham/DetachObstacle.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_DETACHOBSTACLE_H
#define KAUTHAM_MESSAGE_DETACHOBSTACLE_H

#include <ros/service_traits.h>


#include <kautham/DetachObstacleRequest.h>
#include <kautham/DetachObstacleResponse.h>


namespace kautham
{

struct DetachObstacle
{

typedef DetachObstacleRequest Request;
typedef DetachObstacleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DetachObstacle
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::DetachObstacle > {
  static const char* value()
  {
    return "c0155037072590e10f8cea66ab714c71";
  }

  static const char* value(const ::kautham::DetachObstacle&) { return value(); }
};

template<>
struct DataType< ::kautham::DetachObstacle > {
  static const char* value()
  {
    return "kautham/DetachObstacle";
  }

  static const char* value(const ::kautham::DetachObstacle&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::DetachObstacleRequest> should match 
// service_traits::MD5Sum< ::kautham::DetachObstacle > 
template<>
struct MD5Sum< ::kautham::DetachObstacleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::DetachObstacle >::value();
  }
  static const char* value(const ::kautham::DetachObstacleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::DetachObstacleRequest> should match 
// service_traits::DataType< ::kautham::DetachObstacle > 
template<>
struct DataType< ::kautham::DetachObstacleRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::DetachObstacle >::value();
  }
  static const char* value(const ::kautham::DetachObstacleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::DetachObstacleResponse> should match 
// service_traits::MD5Sum< ::kautham::DetachObstacle > 
template<>
struct MD5Sum< ::kautham::DetachObstacleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::DetachObstacle >::value();
  }
  static const char* value(const ::kautham::DetachObstacleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::DetachObstacleResponse> should match 
// service_traits::DataType< ::kautham::DetachObstacle > 
template<>
struct DataType< ::kautham::DetachObstacleResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::DetachObstacle >::value();
  }
  static const char* value(const ::kautham::DetachObstacleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_DETACHOBSTACLE_H
