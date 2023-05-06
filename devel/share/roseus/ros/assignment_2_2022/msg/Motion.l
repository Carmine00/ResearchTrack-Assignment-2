;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::Motion)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'Motion (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::MOTION")
  (make-package "ASSIGNMENT_2_2022::MOTION"))

(in-package "ROS")
;;//! \htmlinclude Motion.msg.html


(defclass assignment_2_2022::Motion
  :super ros::object
  :slots (_distance _average_speed ))

(defmethod assignment_2_2022::Motion
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:average_speed __average_speed) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _average_speed (float __average_speed))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:average_speed
   (&optional __average_speed)
   (if __average_speed (setq _average_speed __average_speed)) _average_speed)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _average_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _average_speed
       (sys::poke _average_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _average_speed
     (setq _average_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get assignment_2_2022::Motion :md5sum-) "082d8111376bb6cbfbb1bde51abaaa39")
(setf (get assignment_2_2022::Motion :datatype-) "assignment_2_2022/Motion")
(setf (get assignment_2_2022::Motion :definition-)
      "float64 distance
float64 average_speed

")



(provide :assignment_2_2022/Motion "082d8111376bb6cbfbb1bde51abaaa39")


