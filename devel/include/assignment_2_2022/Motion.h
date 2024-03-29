// Generated by gencpp from file assignment_2_2022/Motion.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2022_MESSAGE_MOTION_H
#define ASSIGNMENT_2_2022_MESSAGE_MOTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment_2_2022
{
template <class ContainerAllocator>
struct Motion_
{
  typedef Motion_<ContainerAllocator> Type;

  Motion_()
    : distance(0.0)
    , average_speed(0.0)  {
    }
  Motion_(const ContainerAllocator& _alloc)
    : distance(0.0)
    , average_speed(0.0)  {
  (void)_alloc;
    }



   typedef double _distance_type;
  _distance_type distance;

   typedef double _average_speed_type;
  _average_speed_type average_speed;





  typedef boost::shared_ptr< ::assignment_2_2022::Motion_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_2_2022::Motion_<ContainerAllocator> const> ConstPtr;

}; // struct Motion_

typedef ::assignment_2_2022::Motion_<std::allocator<void> > Motion;

typedef boost::shared_ptr< ::assignment_2_2022::Motion > MotionPtr;
typedef boost::shared_ptr< ::assignment_2_2022::Motion const> MotionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_2_2022::Motion_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_2_2022::Motion_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignment_2_2022::Motion_<ContainerAllocator1> & lhs, const ::assignment_2_2022::Motion_<ContainerAllocator2> & rhs)
{
  return lhs.distance == rhs.distance &&
    lhs.average_speed == rhs.average_speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignment_2_2022::Motion_<ContainerAllocator1> & lhs, const ::assignment_2_2022::Motion_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignment_2_2022

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2022::Motion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2022::Motion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2022::Motion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2022::Motion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2022::Motion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2022::Motion_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_2_2022::Motion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "082d8111376bb6cbfbb1bde51abaaa39";
  }

  static const char* value(const ::assignment_2_2022::Motion_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x082d8111376bb6cbULL;
  static const uint64_t static_value2 = 0xfbb1bde51abaaa39ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_2_2022::Motion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_2_2022/Motion";
  }

  static const char* value(const ::assignment_2_2022::Motion_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_2_2022::Motion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 distance\n"
"float64 average_speed\n"
;
  }

  static const char* value(const ::assignment_2_2022::Motion_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_2_2022::Motion_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance);
      stream.next(m.average_speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Motion_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_2_2022::Motion_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment_2_2022::Motion_<ContainerAllocator>& v)
  {
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
    s << indent << "average_speed: ";
    Printer<double>::stream(s, indent + "  ", v.average_speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_2_2022_MESSAGE_MOTION_H
