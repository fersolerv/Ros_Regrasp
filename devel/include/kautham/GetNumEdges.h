// Generated by gencpp from file kautham/GetNumEdges.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_GETNUMEDGES_H
#define KAUTHAM_MESSAGE_GETNUMEDGES_H

#include <ros/service_traits.h>


#include <kautham/GetNumEdgesRequest.h>
#include <kautham/GetNumEdgesResponse.h>


namespace kautham
{

struct GetNumEdges
{

typedef GetNumEdgesRequest Request;
typedef GetNumEdgesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetNumEdges
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::GetNumEdges > {
  static const char* value()
  {
    return "54b3c80efd6fae6e6ffff8a4b9facd69";
  }

  static const char* value(const ::kautham::GetNumEdges&) { return value(); }
};

template<>
struct DataType< ::kautham::GetNumEdges > {
  static const char* value()
  {
    return "kautham/GetNumEdges";
  }

  static const char* value(const ::kautham::GetNumEdges&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::GetNumEdgesRequest> should match 
// service_traits::MD5Sum< ::kautham::GetNumEdges > 
template<>
struct MD5Sum< ::kautham::GetNumEdgesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::GetNumEdges >::value();
  }
  static const char* value(const ::kautham::GetNumEdgesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::GetNumEdgesRequest> should match 
// service_traits::DataType< ::kautham::GetNumEdges > 
template<>
struct DataType< ::kautham::GetNumEdgesRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::GetNumEdges >::value();
  }
  static const char* value(const ::kautham::GetNumEdgesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::GetNumEdgesResponse> should match 
// service_traits::MD5Sum< ::kautham::GetNumEdges > 
template<>
struct MD5Sum< ::kautham::GetNumEdgesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::GetNumEdges >::value();
  }
  static const char* value(const ::kautham::GetNumEdgesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::GetNumEdgesResponse> should match 
// service_traits::DataType< ::kautham::GetNumEdges > 
template<>
struct DataType< ::kautham::GetNumEdgesResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::GetNumEdges >::value();
  }
  static const char* value(const ::kautham::GetNumEdgesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_GETNUMEDGES_H
