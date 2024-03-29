// Generated by gencpp from file assignment_2_2022/StatInfResponse.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2022_MESSAGE_STATINFRESPONSE_H
#define ASSIGNMENT_2_2022_MESSAGE_STATINFRESPONSE_H


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
struct StatInfResponse_
{
  typedef StatInfResponse_<ContainerAllocator> Type;

  StatInfResponse_()
    : goalReached(0)
    , goalCanceled(0)  {
    }
  StatInfResponse_(const ContainerAllocator& _alloc)
    : goalReached(0)
    , goalCanceled(0)  {
  (void)_alloc;
    }



   typedef uint32_t _goalReached_type;
  _goalReached_type goalReached;

   typedef uint32_t _goalCanceled_type;
  _goalCanceled_type goalCanceled;





  typedef boost::shared_ptr< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StatInfResponse_

typedef ::assignment_2_2022::StatInfResponse_<std::allocator<void> > StatInfResponse;

typedef boost::shared_ptr< ::assignment_2_2022::StatInfResponse > StatInfResponsePtr;
typedef boost::shared_ptr< ::assignment_2_2022::StatInfResponse const> StatInfResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_2_2022::StatInfResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignment_2_2022::StatInfResponse_<ContainerAllocator1> & lhs, const ::assignment_2_2022::StatInfResponse_<ContainerAllocator2> & rhs)
{
  return lhs.goalReached == rhs.goalReached &&
    lhs.goalCanceled == rhs.goalCanceled;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignment_2_2022::StatInfResponse_<ContainerAllocator1> & lhs, const ::assignment_2_2022::StatInfResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignment_2_2022

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "31c045aed7eae4a99c1b5f5a71d1bdb1";
  }

  static const char* value(const ::assignment_2_2022::StatInfResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x31c045aed7eae4a9ULL;
  static const uint64_t static_value2 = 0x9c1b5f5a71d1bdb1ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_2_2022/StatInfResponse";
  }

  static const char* value(const ::assignment_2_2022::StatInfResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 goalReached\n"
"uint32 goalCanceled\n"
"\n"
;
  }

  static const char* value(const ::assignment_2_2022::StatInfResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goalReached);
      stream.next(m.goalCanceled);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StatInfResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_2_2022::StatInfResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment_2_2022::StatInfResponse_<ContainerAllocator>& v)
  {
    s << indent << "goalReached: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.goalReached);
    s << indent << "goalCanceled: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.goalCanceled);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_2_2022_MESSAGE_STATINFRESPONSE_H
