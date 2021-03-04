; Auto-generated. Do not edit!


(cl:in-package rbe3002_turtle06-msg)


;//! \htmlinclude FrontierMsg.msg.html

(cl:defclass <FrontierMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (cell_positions
    :reader cell_positions
    :initarg :cell_positions
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass FrontierMsg (<FrontierMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrontierMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrontierMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe3002_turtle06-msg:<FrontierMsg> is deprecated: use rbe3002_turtle06-msg:FrontierMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FrontierMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe3002_turtle06-msg:header-val is deprecated.  Use rbe3002_turtle06-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <FrontierMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe3002_turtle06-msg:centroid-val is deprecated.  Use rbe3002_turtle06-msg:centroid instead.")
  (centroid m))

(cl:ensure-generic-function 'cell_positions-val :lambda-list '(m))
(cl:defmethod cell_positions-val ((m <FrontierMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe3002_turtle06-msg:cell_positions-val is deprecated.  Use rbe3002_turtle06-msg:cell_positions instead.")
  (cell_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrontierMsg>) ostream)
  "Serializes a message object of type '<FrontierMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cell_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrontierMsg>) istream)
  "Deserializes a message object of type '<FrontierMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrontierMsg>)))
  "Returns string type for a message object of type '<FrontierMsg>"
  "rbe3002_turtle06/FrontierMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrontierMsg)))
  "Returns string type for a message object of type 'FrontierMsg"
  "rbe3002_turtle06/FrontierMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrontierMsg>)))
  "Returns md5sum for a message object of type '<FrontierMsg>"
  "4134cb203df22c66dd1dc71eb3cd5c11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrontierMsg)))
  "Returns md5sum for a message object of type 'FrontierMsg"
  "4134cb203df22c66dd1dc71eb3cd5c11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrontierMsg>)))
  "Returns full string definition for message of type '<FrontierMsg>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point centroid~%geometry_msgs/Point[] cell_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrontierMsg)))
  "Returns full string definition for message of type 'FrontierMsg"
  (cl:format cl:nil "Header header~%geometry_msgs/Point centroid~%geometry_msgs/Point[] cell_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrontierMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrontierMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'FrontierMsg
    (cl:cons ':header (header msg))
    (cl:cons ':centroid (centroid msg))
    (cl:cons ':cell_positions (cell_positions msg))
))
