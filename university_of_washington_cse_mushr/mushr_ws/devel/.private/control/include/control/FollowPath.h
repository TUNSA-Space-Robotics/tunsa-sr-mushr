// Generated by gencpp from file control/FollowPath.msg
// DO NOT EDIT!


#ifndef CONTROL_MESSAGE_FOLLOWPATH_H
#define CONTROL_MESSAGE_FOLLOWPATH_H

#include <ros/service_traits.h>


#include <control/FollowPathRequest.h>
#include <control/FollowPathResponse.h>


namespace control
{

struct FollowPath
{

typedef FollowPathRequest Request;
typedef FollowPathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FollowPath
} // namespace control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::control::FollowPath > {
  static const char* value()
  {
    return "c2bb767f9ceb2e20df0ce88c9cacf34d";
  }

  static const char* value(const ::control::FollowPath&) { return value(); }
};

template<>
struct DataType< ::control::FollowPath > {
  static const char* value()
  {
    return "control/FollowPath";
  }

  static const char* value(const ::control::FollowPath&) { return value(); }
};


// service_traits::MD5Sum< ::control::FollowPathRequest> should match
// service_traits::MD5Sum< ::control::FollowPath >
template<>
struct MD5Sum< ::control::FollowPathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::control::FollowPath >::value();
  }
  static const char* value(const ::control::FollowPathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::control::FollowPathRequest> should match
// service_traits::DataType< ::control::FollowPath >
template<>
struct DataType< ::control::FollowPathRequest>
{
  static const char* value()
  {
    return DataType< ::control::FollowPath >::value();
  }
  static const char* value(const ::control::FollowPathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::control::FollowPathResponse> should match
// service_traits::MD5Sum< ::control::FollowPath >
template<>
struct MD5Sum< ::control::FollowPathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::control::FollowPath >::value();
  }
  static const char* value(const ::control::FollowPathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::control::FollowPathResponse> should match
// service_traits::DataType< ::control::FollowPath >
template<>
struct DataType< ::control::FollowPathResponse>
{
  static const char* value()
  {
    return DataType< ::control::FollowPath >::value();
  }
  static const char* value(const ::control::FollowPathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CONTROL_MESSAGE_FOLLOWPATH_H