;; Auto-generated. Do not edit!


(when (boundp 'rbe3002_turtle06::GetFrontiers)
  (if (not (find-package "RBE3002_TURTLE06"))
    (make-package "RBE3002_TURTLE06"))
  (shadow 'GetFrontiers (find-package "RBE3002_TURTLE06")))
(unless (find-package "RBE3002_TURTLE06::GETFRONTIERS")
  (make-package "RBE3002_TURTLE06::GETFRONTIERS"))
(unless (find-package "RBE3002_TURTLE06::GETFRONTIERSREQUEST")
  (make-package "RBE3002_TURTLE06::GETFRONTIERSREQUEST"))
(unless (find-package "RBE3002_TURTLE06::GETFRONTIERSRESPONSE")
  (make-package "RBE3002_TURTLE06::GETFRONTIERSRESPONSE"))

(in-package "ROS")





(defclass rbe3002_turtle06::GetFrontiersRequest
  :super ros::object
  :slots ())

(defmethod rbe3002_turtle06::GetFrontiersRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rbe3002_turtle06::GetFrontiersResponse
  :super ros::object
  :slots (_frontier_cells ))

(defmethod rbe3002_turtle06::GetFrontiersResponse
  (:init
   (&key
    ((:frontier_cells __frontier_cells) (let (r) (dotimes (i 0) (push (instance rbe3002_turtle06::FrontierMsg :init) r)) r))
    )
   (send-super :init)
   (setq _frontier_cells __frontier_cells)
   self)
  (:frontier_cells
   (&rest __frontier_cells)
   (if (keywordp (car __frontier_cells))
       (send* _frontier_cells __frontier_cells)
     (progn
       (if __frontier_cells (setq _frontier_cells (car __frontier_cells)))
       _frontier_cells)))
  (:serialization-length
   ()
   (+
    ;; rbe3002_turtle06/FrontierMsg[] _frontier_cells
    (apply #'+ (send-all _frontier_cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rbe3002_turtle06/FrontierMsg[] _frontier_cells
     (write-long (length _frontier_cells) s)
     (dolist (elem _frontier_cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rbe3002_turtle06/FrontierMsg[] _frontier_cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontier_cells (let (r) (dotimes (i n) (push (instance rbe3002_turtle06::FrontierMsg :init) r)) r))
     (dolist (elem- _frontier_cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rbe3002_turtle06::GetFrontiers
  :super ros::object
  :slots ())

(setf (get rbe3002_turtle06::GetFrontiers :md5sum-) "6129dd59a1e4fe58cd44208589e088ed")
(setf (get rbe3002_turtle06::GetFrontiers :datatype-) "rbe3002_turtle06/GetFrontiers")
(setf (get rbe3002_turtle06::GetFrontiers :request) rbe3002_turtle06::GetFrontiersRequest)
(setf (get rbe3002_turtle06::GetFrontiers :response) rbe3002_turtle06::GetFrontiersResponse)

(defmethod rbe3002_turtle06::GetFrontiersRequest
  (:response () (instance rbe3002_turtle06::GetFrontiersResponse :init)))

(setf (get rbe3002_turtle06::GetFrontiersRequest :md5sum-) "6129dd59a1e4fe58cd44208589e088ed")
(setf (get rbe3002_turtle06::GetFrontiersRequest :datatype-) "rbe3002_turtle06/GetFrontiersRequest")
(setf (get rbe3002_turtle06::GetFrontiersRequest :definition-)
      "
---

FrontierMsg[] frontier_cells

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

(setf (get rbe3002_turtle06::GetFrontiersResponse :md5sum-) "6129dd59a1e4fe58cd44208589e088ed")
(setf (get rbe3002_turtle06::GetFrontiersResponse :datatype-) "rbe3002_turtle06/GetFrontiersResponse")
(setf (get rbe3002_turtle06::GetFrontiersResponse :definition-)
      "
---

FrontierMsg[] frontier_cells

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



(provide :rbe3002_turtle06/GetFrontiers "6129dd59a1e4fe58cd44208589e088ed")


