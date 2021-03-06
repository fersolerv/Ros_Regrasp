// Generated by gencpp from file kautham/SetObsControlsStream.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_SETOBSCONTROLSSTREAM_H
#define KAUTHAM_MESSAGE_SETOBSCONTROLSSTREAM_H

#include <ros/service_traits.h>


#include <kautham/SetObsControlsStreamRequest.h>
#include <kautham/SetObsControlsStreamResponse.h>


namespace kautham
{

struct SetObsControlsStream
{

typedef SetObsControlsStreamRequest Request;
typedef SetObsControlsStreamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetObsControlsStream
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::SetObsControlsStream > {
  static const char* value()
  {
    return "3e92b278751cc2f940a8c3b100059169";
  }

  static const char* value(const ::kautham::SetObsControlsStream&) { return value(); }
};

template<>
struct DataType< ::kautham::SetObsControlsStream > {
  static const char* value()
  {
    return "kautham/SetObsControlsStream";
  }

  static const char* value(const ::kautham::SetObsControlsStream&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::SetObsControlsStreamRequest> should match 
// service_traits::MD5Sum< ::kautham::SetObsControlsStream > 
template<>
struct MD5Sum< ::kautham::SetObsControlsStreamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetObsControlsStream >::value();
  }
  static const char* value(const ::kautham::SetObsControlsStreamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetObsControlsStreamRequest> should match 
// service_traits::DataType< ::kautham::SetObsControlsStream > 
template<>
struct DataType< ::kautham::SetObsControlsStreamRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::SetObsControlsStream >::value();
  }
  static const char* value(const ::kautham::SetObsControlsStreamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::SetObsControlsStreamResponse> should match 
// service_traits::MD5Sum< ::kautham::SetObsControlsStream > 
template<>
struct MD5Sum< ::kautham::SetObsControlsStreamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetObsControlsStream >::value();
  }
  static const char* value(const ::kautham::SetObsControlsStreamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetObsControlsStreamResponse> should match 
// service_traits::DataType< ::kautham::SetObsControlsStream > 
template<>
struct DataType< ::kautham::SetObsControlsStreamResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::SetObsControlsStream >::value();
  }
  static const char* value(const ::kautham::SetObsControlsStreamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_SETOBSCONTROLSSTREAM_H
