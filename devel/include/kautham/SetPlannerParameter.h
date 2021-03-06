// Generated by gencpp from file kautham/SetPlannerParameter.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_SETPLANNERPARAMETER_H
#define KAUTHAM_MESSAGE_SETPLANNERPARAMETER_H

#include <ros/service_traits.h>


#include <kautham/SetPlannerParameterRequest.h>
#include <kautham/SetPlannerParameterResponse.h>


namespace kautham
{

struct SetPlannerParameter
{

typedef SetPlannerParameterRequest Request;
typedef SetPlannerParameterResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetPlannerParameter
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::SetPlannerParameter > {
  static const char* value()
  {
    return "db3d47242da6be745fd074d8145bfa61";
  }

  static const char* value(const ::kautham::SetPlannerParameter&) { return value(); }
};

template<>
struct DataType< ::kautham::SetPlannerParameter > {
  static const char* value()
  {
    return "kautham/SetPlannerParameter";
  }

  static const char* value(const ::kautham::SetPlannerParameter&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::SetPlannerParameterRequest> should match 
// service_traits::MD5Sum< ::kautham::SetPlannerParameter > 
template<>
struct MD5Sum< ::kautham::SetPlannerParameterRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetPlannerParameter >::value();
  }
  static const char* value(const ::kautham::SetPlannerParameterRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetPlannerParameterRequest> should match 
// service_traits::DataType< ::kautham::SetPlannerParameter > 
template<>
struct DataType< ::kautham::SetPlannerParameterRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::SetPlannerParameter >::value();
  }
  static const char* value(const ::kautham::SetPlannerParameterRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::SetPlannerParameterResponse> should match 
// service_traits::MD5Sum< ::kautham::SetPlannerParameter > 
template<>
struct MD5Sum< ::kautham::SetPlannerParameterResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::SetPlannerParameter >::value();
  }
  static const char* value(const ::kautham::SetPlannerParameterResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::SetPlannerParameterResponse> should match 
// service_traits::DataType< ::kautham::SetPlannerParameter > 
template<>
struct DataType< ::kautham::SetPlannerParameterResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::SetPlannerParameter >::value();
  }
  static const char* value(const ::kautham::SetPlannerParameterResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_SETPLANNERPARAMETER_H
