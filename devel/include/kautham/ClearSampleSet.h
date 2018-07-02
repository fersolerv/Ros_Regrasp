// Generated by gencpp from file kautham/ClearSampleSet.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_CLEARSAMPLESET_H
#define KAUTHAM_MESSAGE_CLEARSAMPLESET_H

#include <ros/service_traits.h>


#include <kautham/ClearSampleSetRequest.h>
#include <kautham/ClearSampleSetResponse.h>


namespace kautham
{

struct ClearSampleSet
{

typedef ClearSampleSetRequest Request;
typedef ClearSampleSetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ClearSampleSet
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::ClearSampleSet > {
  static const char* value()
  {
    return "003b81baa95ab323fc1ddf3c7d0bee81";
  }

  static const char* value(const ::kautham::ClearSampleSet&) { return value(); }
};

template<>
struct DataType< ::kautham::ClearSampleSet > {
  static const char* value()
  {
    return "kautham/ClearSampleSet";
  }

  static const char* value(const ::kautham::ClearSampleSet&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::ClearSampleSetRequest> should match 
// service_traits::MD5Sum< ::kautham::ClearSampleSet > 
template<>
struct MD5Sum< ::kautham::ClearSampleSetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::ClearSampleSet >::value();
  }
  static const char* value(const ::kautham::ClearSampleSetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::ClearSampleSetRequest> should match 
// service_traits::DataType< ::kautham::ClearSampleSet > 
template<>
struct DataType< ::kautham::ClearSampleSetRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::ClearSampleSet >::value();
  }
  static const char* value(const ::kautham::ClearSampleSetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::ClearSampleSetResponse> should match 
// service_traits::MD5Sum< ::kautham::ClearSampleSet > 
template<>
struct MD5Sum< ::kautham::ClearSampleSetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::ClearSampleSet >::value();
  }
  static const char* value(const ::kautham::ClearSampleSetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::ClearSampleSetResponse> should match 
// service_traits::DataType< ::kautham::ClearSampleSet > 
template<>
struct DataType< ::kautham::ClearSampleSetResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::ClearSampleSet >::value();
  }
  static const char* value(const ::kautham::ClearSampleSetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_CLEARSAMPLESET_H
