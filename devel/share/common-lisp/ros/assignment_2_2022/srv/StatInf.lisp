; Auto-generated. Do not edit!


(cl:in-package assignment_2_2022-srv)


;//! \htmlinclude StatInf-request.msg.html

(cl:defclass <StatInf-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StatInf-request (<StatInf-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatInf-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatInf-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<StatInf-request> is deprecated: use assignment_2_2022-srv:StatInf-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatInf-request>) ostream)
  "Serializes a message object of type '<StatInf-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatInf-request>) istream)
  "Deserializes a message object of type '<StatInf-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatInf-request>)))
  "Returns string type for a service object of type '<StatInf-request>"
  "assignment_2_2022/StatInfRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatInf-request)))
  "Returns string type for a service object of type 'StatInf-request"
  "assignment_2_2022/StatInfRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatInf-request>)))
  "Returns md5sum for a message object of type '<StatInf-request>"
  "31c045aed7eae4a99c1b5f5a71d1bdb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatInf-request)))
  "Returns md5sum for a message object of type 'StatInf-request"
  "31c045aed7eae4a99c1b5f5a71d1bdb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatInf-request>)))
  "Returns full string definition for message of type '<StatInf-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatInf-request)))
  "Returns full string definition for message of type 'StatInf-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatInf-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatInf-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StatInf-request
))
;//! \htmlinclude StatInf-response.msg.html

(cl:defclass <StatInf-response> (roslisp-msg-protocol:ros-message)
  ((goalReached
    :reader goalReached
    :initarg :goalReached
    :type cl:integer
    :initform 0)
   (goalCanceled
    :reader goalCanceled
    :initarg :goalCanceled
    :type cl:integer
    :initform 0))
)

(cl:defclass StatInf-response (<StatInf-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatInf-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatInf-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<StatInf-response> is deprecated: use assignment_2_2022-srv:StatInf-response instead.")))

(cl:ensure-generic-function 'goalReached-val :lambda-list '(m))
(cl:defmethod goalReached-val ((m <StatInf-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:goalReached-val is deprecated.  Use assignment_2_2022-srv:goalReached instead.")
  (goalReached m))

(cl:ensure-generic-function 'goalCanceled-val :lambda-list '(m))
(cl:defmethod goalCanceled-val ((m <StatInf-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:goalCanceled-val is deprecated.  Use assignment_2_2022-srv:goalCanceled instead.")
  (goalCanceled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatInf-response>) ostream)
  "Serializes a message object of type '<StatInf-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalReached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalReached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'goalReached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'goalReached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalCanceled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalCanceled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'goalCanceled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'goalCanceled)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatInf-response>) istream)
  "Deserializes a message object of type '<StatInf-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalReached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalReached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'goalReached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'goalReached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goalCanceled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goalCanceled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'goalCanceled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'goalCanceled)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatInf-response>)))
  "Returns string type for a service object of type '<StatInf-response>"
  "assignment_2_2022/StatInfResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatInf-response)))
  "Returns string type for a service object of type 'StatInf-response"
  "assignment_2_2022/StatInfResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatInf-response>)))
  "Returns md5sum for a message object of type '<StatInf-response>"
  "31c045aed7eae4a99c1b5f5a71d1bdb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatInf-response)))
  "Returns md5sum for a message object of type 'StatInf-response"
  "31c045aed7eae4a99c1b5f5a71d1bdb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatInf-response>)))
  "Returns full string definition for message of type '<StatInf-response>"
  (cl:format cl:nil "uint32 goalReached~%uint32 goalCanceled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatInf-response)))
  "Returns full string definition for message of type 'StatInf-response"
  (cl:format cl:nil "uint32 goalReached~%uint32 goalCanceled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatInf-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatInf-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StatInf-response
    (cl:cons ':goalReached (goalReached msg))
    (cl:cons ':goalCanceled (goalCanceled msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StatInf)))
  'StatInf-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StatInf)))
  'StatInf-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatInf)))
  "Returns string type for a service object of type '<StatInf>"
  "assignment_2_2022/StatInf")