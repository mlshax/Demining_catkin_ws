; Auto-generated. Do not edit!


(cl:in-package demining_rover-msg)


;//! \htmlinclude GPSint.msg.html

(cl:defclass <GPSint> (roslisp-msg-protocol:ros-message)
  ((lat
    :reader lat
    :initarg :lat
    :type cl:integer
    :initform 0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:integer
    :initform 0)
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GPSint (<GPSint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demining_rover-msg:<GPSint> is deprecated: use demining_rover-msg:GPSint instead.")))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GPSint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demining_rover-msg:lat-val is deprecated.  Use demining_rover-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <GPSint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demining_rover-msg:lon-val is deprecated.  Use demining_rover-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <GPSint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demining_rover-msg:fix_type-val is deprecated.  Use demining_rover-msg:fix_type instead.")
  (fix_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSint>) ostream)
  "Serializes a message object of type '<GPSint>"
  (cl:let* ((signed (cl:slot-value msg 'lat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSint>) istream)
  "Deserializes a message object of type '<GPSint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSint>)))
  "Returns string type for a message object of type '<GPSint>"
  "demining_rover/GPSint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSint)))
  "Returns string type for a message object of type 'GPSint"
  "demining_rover/GPSint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSint>)))
  "Returns md5sum for a message object of type '<GPSint>"
  "72456d3b6f9cc07029a5a5573bf0ab86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSint)))
  "Returns md5sum for a message object of type 'GPSint"
  "72456d3b6f9cc07029a5a5573bf0ab86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSint>)))
  "Returns full string definition for message of type '<GPSint>"
  (cl:format cl:nil "int32 lat~%int32 lon~%uint8 fix_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSint)))
  "Returns full string definition for message of type 'GPSint"
  (cl:format cl:nil "int32 lat~%int32 lon~%uint8 fix_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSint>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSint>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSint
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':fix_type (fix_type msg))
))
