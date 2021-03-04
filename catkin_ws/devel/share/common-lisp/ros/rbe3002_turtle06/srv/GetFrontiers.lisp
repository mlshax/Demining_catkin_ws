; Auto-generated. Do not edit!


(cl:in-package rbe3002_turtle06-srv)


;//! \htmlinclude GetFrontiers-request.msg.html

(cl:defclass <GetFrontiers-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFrontiers-request (<GetFrontiers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrontiers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrontiers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe3002_turtle06-srv:<GetFrontiers-request> is deprecated: use rbe3002_turtle06-srv:GetFrontiers-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrontiers-request>) ostream)
  "Serializes a message object of type '<GetFrontiers-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrontiers-request>) istream)
  "Deserializes a message object of type '<GetFrontiers-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrontiers-request>)))
  "Returns string type for a service object of type '<GetFrontiers-request>"
  "rbe3002_turtle06/GetFrontiersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrontiers-request)))
  "Returns string type for a service object of type 'GetFrontiers-request"
  "rbe3002_turtle06/GetFrontiersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrontiers-request>)))
  "Returns md5sum for a message object of type '<GetFrontiers-request>"
  "6129dd59a1e4fe58cd44208589e088ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrontiers-request)))
  "Returns md5sum for a message object of type 'GetFrontiers-request"
  "6129dd59a1e4fe58cd44208589e088ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrontiers-request>)))
  "Returns full string definition for message of type '<GetFrontiers-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrontiers-request)))
  "Returns full string definition for message of type 'GetFrontiers-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrontiers-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrontiers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrontiers-request
))
;//! \htmlinclude GetFrontiers-response.msg.html

(cl:defclass <GetFrontiers-response> (roslisp-msg-protocol:ros-message)
  ((frontier_cells
    :reader frontier_cells
    :initarg :frontier_cells
    :type (cl:vector rbe3002_turtle06-msg:FrontierMsg)
   :initform (cl:make-array 0 :element-type 'rbe3002_turtle06-msg:FrontierMsg :initial-element (cl:make-instance 'rbe3002_turtle06-msg:FrontierMsg))))
)

(cl:defclass GetFrontiers-response (<GetFrontiers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrontiers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrontiers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rbe3002_turtle06-srv:<GetFrontiers-response> is deprecated: use rbe3002_turtle06-srv:GetFrontiers-response instead.")))

(cl:ensure-generic-function 'frontier_cells-val :lambda-list '(m))
(cl:defmethod frontier_cells-val ((m <GetFrontiers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rbe3002_turtle06-srv:frontier_cells-val is deprecated.  Use rbe3002_turtle06-srv:frontier_cells instead.")
  (frontier_cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrontiers-response>) ostream)
  "Serializes a message object of type '<GetFrontiers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frontier_cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frontier_cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrontiers-response>) istream)
  "Deserializes a message object of type '<GetFrontiers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frontier_cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frontier_cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rbe3002_turtle06-msg:FrontierMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrontiers-response>)))
  "Returns string type for a service object of type '<GetFrontiers-response>"
  "rbe3002_turtle06/GetFrontiersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrontiers-response)))
  "Returns string type for a service object of type 'GetFrontiers-response"
  "rbe3002_turtle06/GetFrontiersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrontiers-response>)))
  "Returns md5sum for a message object of type '<GetFrontiers-response>"
  "6129dd59a1e4fe58cd44208589e088ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrontiers-response)))
  "Returns md5sum for a message object of type 'GetFrontiers-response"
  "6129dd59a1e4fe58cd44208589e088ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrontiers-response>)))
  "Returns full string definition for message of type '<GetFrontiers-response>"
  (cl:format cl:nil "~%FrontierMsg[] frontier_cells~%~%================================================================================~%MSG: rbe3002_turtle06/FrontierMsg~%Header header~%geometry_msgs/Point centroid~%geometry_msgs/Point[] cell_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrontiers-response)))
  "Returns full string definition for message of type 'GetFrontiers-response"
  (cl:format cl:nil "~%FrontierMsg[] frontier_cells~%~%================================================================================~%MSG: rbe3002_turtle06/FrontierMsg~%Header header~%geometry_msgs/Point centroid~%geometry_msgs/Point[] cell_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrontiers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frontier_cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrontiers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrontiers-response
    (cl:cons ':frontier_cells (frontier_cells msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFrontiers)))
  'GetFrontiers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFrontiers)))
  'GetFrontiers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrontiers)))
  "Returns string type for a service object of type '<GetFrontiers>"
  "rbe3002_turtle06/GetFrontiers")