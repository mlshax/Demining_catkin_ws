;; Auto-generated. Do not edit!


(when (boundp 'demining_rover::GPSint)
  (if (not (find-package "DEMINING_ROVER"))
    (make-package "DEMINING_ROVER"))
  (shadow 'GPSint (find-package "DEMINING_ROVER")))
(unless (find-package "DEMINING_ROVER::GPSINT")
  (make-package "DEMINING_ROVER::GPSINT"))

(in-package "ROS")
;;//! \htmlinclude GPSint.msg.html


(defclass demining_rover::GPSint
  :super ros::object
  :slots (_lat _lon _fix_type ))

(defmethod demining_rover::GPSint
  (:init
   (&key
    ((:lat __lat) 0)
    ((:lon __lon) 0)
    ((:fix_type __fix_type) 0)
    )
   (send-super :init)
   (setq _lat (round __lat))
   (setq _lon (round __lon))
   (setq _fix_type (round __fix_type))
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:serialization-length
   ()
   (+
    ;; int32 _lat
    4
    ;; int32 _lon
    4
    ;; uint8 _fix_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lat
       (write-long _lat s)
     ;; int32 _lon
       (write-long _lon s)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lat
     (setq _lat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lon
     (setq _lon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get demining_rover::GPSint :md5sum-) "72456d3b6f9cc07029a5a5573bf0ab86")
(setf (get demining_rover::GPSint :datatype-) "demining_rover/GPSint")
(setf (get demining_rover::GPSint :definition-)
      "int32 lat
int32 lon
uint8 fix_type


")



(provide :demining_rover/GPSint "72456d3b6f9cc07029a5a5573bf0ab86")


