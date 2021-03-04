;; Auto-generated. Do not edit!


(when (boundp 'rbe3002_turtle06::FrontierList)
  (if (not (find-package "RBE3002_TURTLE06"))
    (make-package "RBE3002_TURTLE06"))
  (shadow 'FrontierList (find-package "RBE3002_TURTLE06")))
(unless (find-package "RBE3002_TURTLE06::FRONTIERLIST")
  (make-package "RBE3002_TURTLE06::FRONTIERLIST"))

(in-package "ROS")
;;//! \htmlinclude FrontierList.msg.html


(defclass rbe3002_turtle06::FrontierList
  :super ros::object
  :slots (_frontiers ))

(defmethod rbe3002_turtle06::FrontierList
  (:init
   (&key
    ((:frontiers __frontiers) (let (r) (dotimes (i 0) (push (instance rbe3002_turtle06::FrontierMsg :init) r)) r))
    )
   (send-super :init)
   (setq _frontiers __frontiers)
   self)
  (:frontiers
   (&rest __frontiers)
   (if (keywordp (car __frontiers))
       (send* _frontiers __frontiers)
     (progn
       (if __frontiers (setq _frontiers (car __frontiers)))
       _frontiers)))
  (:serialization-length
   ()
   (+
    ;; rbe3002_turtle06/FrontierMsg[] _frontiers
    (apply #'+ (send-all _frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rbe3002_turtle06/FrontierMsg[] _frontiers
     (write-long (length _frontiers) s)
     (dolist (elem _frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rbe3002_turtle06/FrontierMsg[] _frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontiers (let (r) (dotimes (i n) (push (instance rbe3002_turtle06::FrontierMsg :init) r)) r))
     (dolist (elem- _frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rbe3002_turtle06::FrontierList :md5sum-) "39730ba6d73fd2782cc41504393a708d")
(setf (get rbe3002_turtle06::FrontierList :datatype-) "rbe3002_turtle06/FrontierList")
(setf (get rbe3002_turtle06::FrontierList :definition-)
      "FrontierMsg[] frontiers
================================================================================
MSG: rbe3002_turtle06/FrontierMsg
Header header
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



(provide :rbe3002_turtle06/FrontierList "39730ba6d73fd2782cc41504393a708d")


