// Generated by gencpp from file control/FollowPathRequest.msg
// DO NOT EDIT!


#ifndef CONTROL_MESSAGE_FOLLOWPATHREQUEST_H
#define CONTROL_MESSAGE_FOLLOWPATHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace control
{
template <class ContainerAllocator>
struct FollowPathRequest_
{
  typedef FollowPathRequest_<ContainerAllocator> Type;

  FollowPathRequest_()
    : path()
    , speed(0.0)  {
    }
  FollowPathRequest_(const ContainerAllocator& _alloc)
    : path(_alloc)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Path_<ContainerAllocator>  _path_type;
  _path_type path;

   typedef double _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::control::FollowPathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::control::FollowPathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FollowPathRequest_

typedef ::control::FollowPathRequest_<std::allocator<void> > FollowPathRequest;

typedef boost::shared_ptr< ::control::FollowPathRequest > FollowPathRequestPtr;
typedef boost::shared_ptr< ::control::FollowPathRequest const> FollowPathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::control::FollowPathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::control::FollowPathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::control::FollowPathRequest_<ContainerAllocator1> & lhs, const ::control::FollowPathRequest_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::control::FollowPathRequest_<ContainerAllocator1> & lhs, const ::control::FollowPathRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::control::FollowPathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control::FollowPathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control::FollowPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control::FollowPathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control::FollowPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control::FollowPathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::control::FollowPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "30066e2d5ce03112d4a07ef84d906618";
  }

  static const char* value(const ::control::FollowPathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x30066e2d5ce03112ULL;
  static const uint64_t static_value2 = 0xd4a07ef84d906618ULL;
};

template<class ContainerAllocator>
struct DataType< ::control::FollowPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "control/FollowPathRequest";
  }

  static const char* value(const ::control::FollowPathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::control::FollowPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_msgs/Path path\n"
"float64 speed\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::control::FollowPathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::control::FollowPathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowPathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::control::FollowPathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::control::FollowPathRequest_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.path);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROL_MESSAGE_FOLLOWPATHREQUEST_H