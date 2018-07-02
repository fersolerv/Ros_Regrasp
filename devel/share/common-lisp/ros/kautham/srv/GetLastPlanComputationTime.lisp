; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude GetLastPlanComputationTime-request.msg.html

(cl:defclass <GetLastPlanComputationTime-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLastPlanComputationTime-request (<GetLastPlanComputationTime-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLastPlanComputationTime-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLastPlanComputationTime-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetLastPlanComputationTime-request> is deprecated: use kautham-srv:GetLastPlanComputationTime-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLastPlanComputationTime-request>) ostream)
  "Serializes a message object of type '<GetLastPlanComputationTime-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLastPlanComputationTime-request>) istream)
  "Deserializes a message object of type '<GetLastPlanComputationTime-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLastPlanComputationTime-request>)))
  "Returns string type for a service object of type '<GetLastPlanComputationTime-request>"
  "kautham/GetLastPlanComputationTimeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastPlanComputationTime-request)))
  "Returns string type for a service object of type 'GetLastPlanComputationTime-request"
  "kautham/GetLastPlanComputationTimeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLastPlanComputationTime-request>)))
  "Returns md5sum for a message object of type '<GetLastPlanComputationTime-request>"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLastPlanComputationTime-request)))
  "Returns md5sum for a message object of type 'GetLastPlanComputationTime-request"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLastPlanComputationTime-request>)))
  "Returns full string definition for message of type '<GetLastPlanComputationTime-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLastPlanComputationTime-request)))
  "Returns full string definition for message of type 'GetLastPlanComputationTime-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLastPlanComputationTime-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLastPlanComputationTime-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLastPlanComputationTime-request
))
;//! \htmlinclude GetLastPlanComputationTime-response.msg.html

(cl:defclass <GetLastPlanComputationTime-response> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetLastPlanComputationTime-response (<GetLastPlanComputationTime-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLastPlanComputationTime-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLastPlanComputationTime-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetLastPlanComputationTime-response> is deprecated: use kautham-srv:GetLastPlanComputationTime-response instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GetLastPlanComputationTime-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:time-val is deprecated.  Use kautham-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLastPlanComputationTime-response>) ostream)
  "Serializes a message object of type '<GetLastPlanComputationTime-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLastPlanComputationTime-response>) istream)
  "Deserializes a message object of type '<GetLastPlanComputationTime-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLastPlanComputationTime-response>)))
  "Returns string type for a service object of type '<GetLastPlanComputationTime-response>"
  "kautham/GetLastPlanComputationTimeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastPlanComputationTime-response)))
  "Returns string type for a service object of type 'GetLastPlanComputationTime-response"
  "kautham/GetLastPlanComputationTimeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLastPlanComputationTime-response>)))
  "Returns md5sum for a message object of type '<GetLastPlanComputationTime-response>"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLastPlanComputationTime-response)))
  "Returns md5sum for a message object of type 'GetLastPlanComputationTime-response"
  "be5310e7aa4c90cdee120add91648cee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLastPlanComputationTime-response>)))
  "Returns full string definition for message of type '<GetLastPlanComputationTime-response>"
  (cl:format cl:nil "float64 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLastPlanComputationTime-response)))
  "Returns full string definition for message of type 'GetLastPlanComputationTime-response"
  (cl:format cl:nil "float64 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLastPlanComputationTime-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLastPlanComputationTime-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLastPlanComputationTime-response
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLastPlanComputationTime)))
  'GetLastPlanComputationTime-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLastPlanComputationTime)))
  'GetLastPlanComputationTime-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLastPlanComputationTime)))
  "Returns string type for a service object of type '<GetLastPlanComputationTime>"
  "kautham/GetLastPlanComputationTime")