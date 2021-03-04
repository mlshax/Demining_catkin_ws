; Auto-generated. Do not edit!


(cl:in-package rbe3002_turtle06-msg)


;//! \htmlinclude FrontierList.msg.html

(cl:defclass <FrontierList> (roslisp-msg-protocol:ros-message)
  ((frontiers
    :reader frontiers
    :initarg :frontiers
    :type (cl:vector rbe3002_turtle06-msg:FrontierMsg)
   :initform (cl:make-array 0 :element-type 'rbe3002_turtle06-msg:FrontierMsg :initial-element (cl:make-instance 'rbe3002_turtle06-msg:FrontierMsg))))
)

(cl:defclass FrontierList (<FrontierList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrontierList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrontierList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe3002_turtle06-msg:<FrontierList> is deprecated: use rbe3002_turtle06-msg:FrontierList instead.")))

(cl:ensure-generic-function 'frontiers-val :lambda-list '(m))
(cl:defmethod frontiers-val ((m <FrontierList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe3002_turtle06-msg:frontiers-val is deprecated.  Use rbe3002_turtle06-msg:frontiers instead.")
  (frontiers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrontierList>) ostream)
  "Serializes a message object of type '<FrontierList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frontiers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frontiers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrontierList>) istream)
  "Deserializes a message object of type '<FrontierList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frontiers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frontiers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rbe3002_turtle06-msg:FrontierMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrontierList>)))
  "Returns string type for a message object of type '<FrontierList>"
  "rbe3002_turtle06/FrontierList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrontierList)))
  "Returns string type for a message object of type 'FrontierList"
  "rbe3002_turtle06/FrontierList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrontierList>)))
  "Returns md5sum for a message object of type '<FrontierList>"
  "39730ba6d73fd2782cc41504393a708d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrontierList)))
  "Returns md5sum for a message object of type 'FrontierList"
  "39730ba6d73fd2782cc41504393a708d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrontierList>)))
  "Returns full string definition for message of type '<FrontierList>"
  (cl:format cl:nil "FrontierMsg[] frontiers~%================================================================================~%MSG: rbe3002_turtle06/FrontierMsg~%Header header~%geometry_msgs/Point centroid~%geometry_msgs/Point[] cell_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrontierList)))
  "Returns full string definition for message of type 'FrontierList"
  (cl:format cl:nil "FrontierMsg[] frontiers~%================================================================================~%MSG: rbe3002_turtle06/FrontierMsg~%Header header~%geometry_msgs/Point centroid~%geometry_msgs/Point[] cell_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrontierList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frontiers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrontierList>))
  "Converts a ROS message object to a list"
  (cl:list 'FrontierList
    (cl:cons ':frontiers (frontiers msg))
))
