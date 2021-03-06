// Generated by gencpp from file kautham/MoveRobot.msg
// DO NOT EDIT!


#ifndef KAUTHAM_MESSAGE_MOVEROBOT_H
#define KAUTHAM_MESSAGE_MOVEROBOT_H

#include <ros/service_traits.h>


#include <kautham/MoveRobotRequest.h>
#include <kautham/MoveRobotResponse.h>


namespace kautham
{

struct MoveRobot
{

typedef MoveRobotRequest Request;
typedef MoveRobotResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoveRobot
} // namespace kautham


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kautham::MoveRobot > {
  static const char* value()
  {
    return "7d2fa353eab7f3aad5af70b3c594c919";
  }

  static const char* value(const ::kautham::MoveRobot&) { return value(); }
};

template<>
struct DataType< ::kautham::MoveRobot > {
  static const char* value()
  {
    return "kautham/MoveRobot";
  }

  static const char* value(const ::kautham::MoveRobot&) { return value(); }
};


// service_traits::MD5Sum< ::kautham::MoveRobotRequest> should match 
// service_traits::MD5Sum< ::kautham::MoveRobot > 
template<>
struct MD5Sum< ::kautham::MoveRobotRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::MoveRobot >::value();
  }
  static const char* value(const ::kautham::MoveRobotRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::MoveRobotRequest> should match 
// service_traits::DataType< ::kautham::MoveRobot > 
template<>
struct DataType< ::kautham::MoveRobotRequest>
{
  static const char* value()
  {
    return DataType< ::kautham::MoveRobot >::value();
  }
  static const char* value(const ::kautham::MoveRobotRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kautham::MoveRobotResponse> should match 
// service_traits::MD5Sum< ::kautham::MoveRobot > 
template<>
struct MD5Sum< ::kautham::MoveRobotResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kautham::MoveRobot >::value();
  }
  static const char* value(const ::kautham::MoveRobotResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kautham::MoveRobotResponse> should match 
// service_traits::DataType< ::kautham::MoveRobot > 
template<>
struct DataType< ::kautham::MoveRobotResponse>
{
  static const char* value()
  {
    return DataType< ::kautham::MoveRobot >::value();
  }
  static const char* value(const ::kautham::MoveRobotResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KAUTHAM_MESSAGE_MOVEROBOT_H
