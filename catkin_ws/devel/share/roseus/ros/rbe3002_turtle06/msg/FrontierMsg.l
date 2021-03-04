;; Auto-generated. Do not edit!


(when (boundp 'rbe3002_turtle06::FrontierMsg)
  (if (not (find-package "RBE3002_TURTLE06"))
    (make-package "RBE3002_TURTLE06"))
  (shadow 'FrontierMsg (find-package "RBE3002_TURTLE06")))
(unless (find-package "RBE3002_TURTLE06::FRONTIERMSG")
  (make-package "RBE3002_TURTLE06::FRONTIERMSG"))

(in-package "ROS")
;;//! \htmlinclude FrontierMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rbe3002_turtle06::FrontierMsg
  :super ros::object
  :slots (_header _centroid _cell_positions ))

(defmethod rbe3002_turtle06::FrontierMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:centroid __centroid) (instance geometry_msgs::Point :init))
    ((:cell_positions __cell_positions) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _centroid __centroid)
   (setq _cell_positions __cell_positions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:cell_positions
   (&rest __cell_positions)
   (if (keywordp (car __cell_positions))
       (send* _cell_positions __cell_positions)
     (progn
       (if __cell_positions (setq _cell_positions (car __cell_positions)))
       _cell_positions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _centroid
    (send _centroid :serialization-length)
    ;; geometry_msgs/Point[] _cell_positions
    (apply #'+ (send-all _cell_positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _centroid
       (send _centroid :serialize s)
     ;; geometry_msgs/Point[] _cell_positions
     (write-long (length _cell_positions) s)
     (dolist (elem _cell_positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; geometry_msgs/Point[] _cell_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _cell_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rbe3002_turtle06::FrontierMsg :md5sum-) "4134cb203df22c66dd1dc71eb3cd5c11")
(setf (get rbe3002_turtle06::FrontierMsg :datatype-) "rbe3002_turtle06/FrontierMsg")
(setf (get rbe3002_turtle06::FrontierMsg :definition-)
      "Header header
geometry_msgs/Point centroid
geometry_msgs/Point[] cell_positions
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :rbe3002_turtle06/FrontierMsg "4134cb203df22c66dd1dc71eb3cd5c11")


