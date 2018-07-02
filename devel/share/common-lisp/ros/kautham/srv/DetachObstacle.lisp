; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude DetachObstacle-request.msg.html

(cl:defclass <DetachObstacle-request> (roslisp-msg-protocol:ros-message)
  ((obs
    :reader obs
    :initarg :obs
    :type cl:integer
    :initform 0))
)

(cl:defclass DetachObstacle-request (<DetachObstacle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetachObstacle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetachObstacle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<DetachObstacle-request> is deprecated: use kautham-srv:DetachObstacle-request instead.")))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <DetachObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:obs-val is deprecated.  Use kautham-srv:obs instead.")
  (obs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetachObstacle-request>) ostream)
  "Serializes a message object of type '<DetachObstacle-request>"
  (cl:let* ((signed (cl:slot-value msg 'obs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetachObstacle-request>) istream)
  "Deserializes a message object of type '<DetachObstacle-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obs) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetachObstacle-request>)))
  "Returns string type for a service object of type '<DetachObstacle-request>"
  "kautham/DetachObstacleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetachObstacle-request)))
  "Returns string type for a service object of type 'DetachObstacle-request"
  "kautham/DetachObstacleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetachObstacle-request>)))
  "Returns md5sum for a message object of type '<DetachObstacle-request>"
  "c0155037072590e10f8cea66ab714c71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetachObstacle-request)))
  "Returns md5sum for a message object of type 'DetachObstacle-request"
  "c0155037072590e10f8cea66ab714c71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetachObstacle-request>)))
  "Returns full string definition for message of type '<DetachObstacle-request>"
  (cl:format cl:nil "int64 obs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetachObstacle-request)))
  "Returns full string definition for message of type 'DetachObstacle-request"
  (cl:format cl:nil "int64 obs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetachObstacle-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetachObstacle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetachObstacle-request
    (cl:cons ':obs (obs msg))
))
;//! \htmlinclude DetachObstacle-response.msg.html

(cl:defclass <DetachObstacle-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DetachObstacle-response (<DetachObstacle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetachObstacle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetachObstacle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<DetachObstacle-response> is deprecated: use kautham-srv:DetachObstacle-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <DetachObstacle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetachObstacle-response>) ostream)
  "Serializes a message object of type '<DetachObstacle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetachObstacle-response>) istream)
  "Deserializes a message object of type '<DetachObstacle-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetachObstacle-response>)))
  "Returns string type for a service object of type '<DetachObstacle-response>"
  "kautham/DetachObstacleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetachObstacle-response)))
  "Returns string type for a service object of type 'DetachObstacle-response"
  "kautham/DetachObstacleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetachObstacle-response>)))
  "Returns md5sum for a message object of type '<DetachObstacle-response>"
  "c0155037072590e10f8cea66ab714c71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetachObstacle-response)))
  "Returns md5sum for a message object of type 'DetachObstacle-response"
  "c0155037072590e10f8cea66ab714c71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetachObstacle-response>)))
  "Returns full string definition for message of type '<DetachObstacle-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetachObstacle-response)))
  "Returns full string definition for message of type 'DetachObstacle-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetachObstacle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetachObstacle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetachObstacle-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetachObstacle)))
  'DetachObstacle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetachObstacle)))
  'DetachObstacle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetachObstacle)))
  "Returns string type for a service object of type '<DetachObstacle>"
  "kautham/DetachObstacle")