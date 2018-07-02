// Generated by gencpp from file kautham/OpenProblemStream.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_OPENPROBLEMSTREAM_H
#define KAUTHAM_MESSAGE_OPENPROBLEMSTREAM_H

#include <ros/service_traits.h>


#include <kautham/OpenProblemStreamRequest.h>
#include <kautham/OpenProblemStreamResponse.h>


namespace kautham
{

struct OpenProblemStream
{

typedef OpenProblemStreamRequest Request;
typedef OpenProblemStreamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OpenProblemStream
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::OpenProblemStream > {
  static const char* value()
  {
    return "f1b18219c49a144f09b5eeb68c6dc119";
  }

  static const char* value(const ::kautham::OpenProblemStream&) { return value(); }
};

template<>
struct DataType< ::kautham::OpenProblemStream > {
  static const char* value()
  {
    return "kautham/OpenProblemStream";
  }

  static const char* value(const ::kautham::OpenProblemStream&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::OpenProblemStreamRequest> should match 
// service_traits::MD5Sum< ::kautham::OpenProblemStream > 
template<>
struct MD5Sum< ::kautham::OpenProblemStreamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::OpenProblemStream >::value();
  }
  static const char* value(const ::kautham::OpenProblemStreamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::OpenProblemStreamRequest> should match 
// service_traits::DataType< ::kautham::OpenProblemStream > 
template<>
struct DataType< ::kautham::OpenProblemStreamRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::OpenProblemStream >::value();
  }
  static const char* value(const ::kautham::OpenProblemStreamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::OpenProblemStreamResponse> should match 
// service_traits::MD5Sum< ::kautham::OpenProblemStream > 
template<>
struct MD5Sum< ::kautham::OpenProblemStreamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::OpenProblemStream >::value();
  }
  static const char* value(const ::kautham::OpenProblemStreamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::OpenProblemStreamResponse> should match 
// service_traits::DataType< ::kautham::OpenProblemStream > 
template<>
struct DataType< ::kautham::OpenProblemStreamResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::OpenProblemStream >::value();
  }
  static const char* value(const ::kautham::OpenProblemStreamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_OPENPROBLEMSTREAM_H
