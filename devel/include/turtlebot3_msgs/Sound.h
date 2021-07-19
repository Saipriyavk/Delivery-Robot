// Generated by gencpp from file turtlebot3_msgs/Sound.msg
// DO NOT EDIT!


#ifndef TURTLEBOT3_MSGS_MESSAGE_SOUND_H
#define TURTLEBOT3_MSGS_MESSAGE_SOUND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtlebot3_msgs
{
template <class ContainerAllocator>
struct Sound_
{
  typedef Sound_<ContainerAllocator> Type;

  Sound_()
    : value(0)  {
    }
  Sound_(const ContainerAllocator& _alloc)
    : value(0)  {
  (void)_alloc;
    }



   typedef uint8_t _value_type;
  _value_type value;



  enum {
    OFF = 0u,
    ON = 1u,
    LOW_BATTERY = 2u,
    ERROR = 3u,
    BUTTON1 = 4u,
    BUTTON2 = 5u,
  };


  typedef boost::shared_ptr< ::turtlebot3_msgs::Sound_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtlebot3_msgs::Sound_<ContainerAllocator> const> ConstPtr;

}; // struct Sound_

typedef ::turtlebot3_msgs::Sound_<std::allocator<void> > Sound;

typedef boost::shared_ptr< ::turtlebot3_msgs::Sound > SoundPtr;
typedef boost::shared_ptr< ::turtlebot3_msgs::Sound const> SoundConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtlebot3_msgs::Sound_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtlebot3_msgs::Sound_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtlebot3_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'turtlebot3_msgs': ['/home/saipriya/projects_ai_cse/src/turtlebot3_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlebot3_msgs::Sound_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlebot3_msgs::Sound_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlebot3_msgs::Sound_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e1f8c7f8a9a61383b5734fbdeca2f99a";
  }

  static const char* value(const ::turtlebot3_msgs::Sound_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe1f8c7f8a9a61383ULL;
  static const uint64_t static_value2 = 0xb5734fbdeca2f99aULL;
};

template<class ContainerAllocator>
struct DataType< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtlebot3_msgs/Sound";
  }

  static const char* value(const ::turtlebot3_msgs::Sound_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "########################################\n\
# CONSTANTS\n\
########################################\n\
uint8 OFF           = 0\n\
uint8 ON            = 1\n\
uint8 LOW_BATTERY   = 2\n\
uint8 ERROR         = 3\n\
uint8 BUTTON1       = 4\n\
uint8 BUTTON2       = 5\n\
\n\
########################################\n\
# Messages\n\
########################################\n\
uint8 value\n\
";
  }

  static const char* value(const ::turtlebot3_msgs::Sound_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Sound_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtlebot3_msgs::Sound_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtlebot3_msgs::Sound_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLEBOT3_MSGS_MESSAGE_SOUND_H
