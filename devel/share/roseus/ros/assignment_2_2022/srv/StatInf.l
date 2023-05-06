;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::StatInf)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'StatInf (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::STATINF")
  (make-package "ASSIGNMENT_2_2022::STATINF"))
(unless (find-package "ASSIGNMENT_2_2022::STATINFREQUEST")
  (make-package "ASSIGNMENT_2_2022::STATINFREQUEST"))
(unless (find-package "ASSIGNMENT_2_2022::STATINFRESPONSE")
  (make-package "ASSIGNMENT_2_2022::STATINFRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2022::StatInfRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2022::StatInfRequest
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

(defclass assignment_2_2022::StatInfResponse
  :super ros::object
  :slots (_goalReached _goalCanceled ))

(defmethod assignment_2_2022::StatInfResponse
  (:init
   (&key
    ((:goalReached __goalReached) 0)
    ((:goalCanceled __goalCanceled) 0)
    )
   (send-super :init)
   (setq _goalReached (round __goalReached))
   (setq _goalCanceled (round __goalCanceled))
   self)
  (:goalReached
   (&optional __goalReached)
   (if __goalReached (setq _goalReached __goalReached)) _goalReached)
  (:goalCanceled
   (&optional __goalCanceled)
   (if __goalCanceled (setq _goalCanceled __goalCanceled)) _goalCanceled)
  (:serialization-length
   ()
   (+
    ;; uint32 _goalReached
    4
    ;; uint32 _goalCanceled
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _goalReached
       (write-long _goalReached s)
     ;; uint32 _goalCanceled
       (write-long _goalCanceled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _goalReached
     (setq _goalReached (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _goalCanceled
     (setq _goalCanceled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass assignment_2_2022::StatInf
  :super ros::object
  :slots ())

(setf (get assignment_2_2022::StatInf :md5sum-) "31c045aed7eae4a99c1b5f5a71d1bdb1")
(setf (get assignment_2_2022::StatInf :datatype-) "assignment_2_2022/StatInf")
(setf (get assignment_2_2022::StatInf :request) assignment_2_2022::StatInfRequest)
(setf (get assignment_2_2022::StatInf :response) assignment_2_2022::StatInfResponse)

(defmethod assignment_2_2022::StatInfRequest
  (:response () (instance assignment_2_2022::StatInfResponse :init)))

(setf (get assignment_2_2022::StatInfRequest :md5sum-) "31c045aed7eae4a99c1b5f5a71d1bdb1")
(setf (get assignment_2_2022::StatInfRequest :datatype-) "assignment_2_2022/StatInfRequest")
(setf (get assignment_2_2022::StatInfRequest :definition-)
      "---
uint32 goalReached
uint32 goalCanceled

")

(setf (get assignment_2_2022::StatInfResponse :md5sum-) "31c045aed7eae4a99c1b5f5a71d1bdb1")
(setf (get assignment_2_2022::StatInfResponse :datatype-) "assignment_2_2022/StatInfResponse")
(setf (get assignment_2_2022::StatInfResponse :definition-)
      "---
uint32 goalReached
uint32 goalCanceled

")



(provide :assignment_2_2022/StatInf "31c045aed7eae4a99c1b5f5a71d1bdb1")


