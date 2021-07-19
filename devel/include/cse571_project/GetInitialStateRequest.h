// Generated by gencpp from file cse571_project/GetInitialStateRequest.msg
// DO NOT EDIT!


#ifndef CSE571_PROJECT_MESSAGE_GETINITIALSTATEREQUEST_H
#define CSE571_PROJECT_MESSAGE_GETINITIALSTATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cse571_project
{
template <class ContainerAllocator>
struct GetInitialStateRequest_
{
  typedef GetInitialStateRequest_<ContainerAllocator> Type;

  GetInitialStateRequest_()
    {
    }
  GetInitialStateRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetInitialStateRequest_

typedef ::cse571_project::GetInitialStateRequest_<std::allocator<void> > GetInitialStateRequest;

typedef boost::shared_ptr< ::cse571_project::GetInitialStateRequest > GetInitialStateRequestPtr;
typedef boost::shared_ptr< ::cse571_project::GetInitialStateRequest const> GetInitialStateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cse571_project::GetInitialStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cse571_project

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::cse571_project::GetInitialStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cse571_project/GetInitialStateRequest";
  }

  static const char* value(const ::cse571_project::GetInitialStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::cse571_project::GetInitialStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetInitialStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cse571_project::GetInitialStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::cse571_project::GetInitialStateRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CSE571_PROJECT_MESSAGE_GETINITIALSTATEREQUEST_H