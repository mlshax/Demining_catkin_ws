// Generated by gencpp from file demining_rover/GPSint.msg
// DO NOT EDIT!


#ifndef DEMINING_ROVER_MESSAGE_GPSINT_H
#define DEMINING_ROVER_MESSAGE_GPSINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace demining_rover
{
template <class ContainerAllocator>
struct GPSint_
{
  typedef GPSint_<ContainerAllocator> Type;

  GPSint_()
    : lat(0)
    , lon(0)
    , fix_type(0)  {
    }
  GPSint_(const ContainerAllocator& _alloc)
    : lat(0)
    , lon(0)
    , fix_type(0)  {
  (void)_alloc;
    }



   typedef int32_t _lat_type;
  _lat_type lat;

   typedef int32_t _lon_type;
  _lon_type lon;

   typedef uint8_t _fix_type_type;
  _fix_type_type fix_type;





  typedef boost::shared_ptr< ::demining_rover::GPSint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::demining_rover::GPSint_<ContainerAllocator> const> ConstPtr;

}; // struct GPSint_

typedef ::demining_rover::GPSint_<std::allocator<void> > GPSint;

typedef boost::shared_ptr< ::demining_rover::GPSint > GPSintPtr;
typedef boost::shared_ptr< ::demining_rover::GPSint const> GPSintConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::demining_rover::GPSint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::demining_rover::GPSint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace demining_rover

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'demining_rover': ['/home/wpirbe/catkin_ws/src/demining_rover/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::demining_rover::GPSint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::demining_rover::GPSint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::demining_rover::GPSint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::demining_rover::GPSint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::demining_rover::GPSint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::demining_rover::GPSint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::demining_rover::GPSint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "72456d3b6f9cc07029a5a5573bf0ab86";
  }

  static const char* value(const ::demining_rover::GPSint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x72456d3b6f9cc070ULL;
  static const uint64_t static_value2 = 0x29a5a5573bf0ab86ULL;
};

template<class ContainerAllocator>
struct DataType< ::demining_rover::GPSint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "demining_rover/GPSint";
  }

  static const char* value(const ::demining_rover::GPSint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::demining_rover::GPSint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 lat\n\
int32 lon\n\
uint8 fix_type\n\
\n\
";
  }

  static const char* value(const ::demining_rover::GPSint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::demining_rover::GPSint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.fix_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GPSint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::demining_rover::GPSint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::demining_rover::GPSint_<ContainerAllocator>& v)
  {
    s << indent << "lat: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lon);
    s << indent << "fix_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fix_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DEMINING_ROVER_MESSAGE_GPSINT_H