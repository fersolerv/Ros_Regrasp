// Generated by gencpp from file kautham/EraseObj.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_ERASEOBJ_H
#define KAUTHAM_MESSAGE_ERASEOBJ_H

#include <ros/service_traits.h>


#include <kautham/EraseObjRequest.h>
#include <kautham/EraseObjResponse.h>


namespace kautham
{

struct EraseObj
{

typedef EraseObjRequest Request;
typedef EraseObjResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EraseObj
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::EraseObj > {
  static const char* value()
  {
    return "28f83b3cf422f398809c60015edec252";
  }

  static const char* value(const ::kautham::EraseObj&) { return value(); }
};

template<>
struct DataType< ::kautham::EraseObj > {
  static const char* value()
  {
    return "kautham/EraseObj";
  }

  static const char* value(const ::kautham::EraseObj&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::EraseObjRequest> should match 
// service_traits::MD5Sum< ::kautham::EraseObj > 
template<>
struct MD5Sum< ::kautham::EraseObjRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::EraseObj >::value();
  }
  static const char* value(const ::kautham::EraseObjRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::EraseObjRequest> should match 
// service_traits::DataType< ::kautham::EraseObj > 
template<>
struct DataType< ::kautham::EraseObjRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::EraseObj >::value();
  }
  static const char* value(const ::kautham::EraseObjRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::EraseObjResponse> should match 
// service_traits::MD5Sum< ::kautham::EraseObj > 
template<>
struct MD5Sum< ::kautham::EraseObjResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::EraseObj >::value();
  }
  static const char* value(const ::kautham::EraseObjResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::EraseObjResponse> should match 
// service_traits::DataType< ::kautham::EraseObj > 
template<>
struct DataType< ::kautham::EraseObjResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::EraseObj >::value();
  }
  static const char* value(const ::kautham::EraseObjResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_ERASEOBJ_H
