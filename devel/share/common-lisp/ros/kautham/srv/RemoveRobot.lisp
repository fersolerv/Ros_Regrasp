; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude RemoveRobot-request.msg.html

(cl:defclass <RemoveRobot-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass RemoveRobot-request (<RemoveRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<RemoveRobot-request> is deprecated: use kautham-srv:RemoveRobot-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <RemoveRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:index-val is deprecated.  Use kautham-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveRobot-request>) ostream)
  "Serializes a message object of type '<RemoveRobot-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveRobot-request>) istream)
  "Deserializes a message object of type '<RemoveRobot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveRobot-request>)))
  "Returns string type for a service object of type '<RemoveRobot-request>"
  "kautham/RemoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveRobot-request)))
  "Returns string type for a service object of type 'RemoveRobot-request"
  "kautham/RemoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveRobot-request>)))
  "Returns md5sum for a message object of type '<RemoveRobot-request>"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveRobot-request)))
  "Returns md5sum for a message object of type 'RemoveRobot-request"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveRobot-request>)))
  "Returns full string definition for message of type '<RemoveRobot-request>"
  (cl:format cl:nil "int64 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveRobot-request)))
  "Returns full string definition for message of type 'RemoveRobot-request"
  (cl:format cl:nil "int64 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveRobot-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveRobot-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude RemoveRobot-response.msg.html

(cl:defclass <RemoveRobot-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveRobot-response (<RemoveRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<RemoveRobot-response> is deprecated: use kautham-srv:RemoveRobot-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <RemoveRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveRobot-response>) ostream)
  "Serializes a message object of type '<RemoveRobot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveRobot-response>) istream)
  "Deserializes a message object of type '<RemoveRobot-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveRobot-response>)))
  "Returns string type for a service object of type '<RemoveRobot-response>"
  "kautham/RemoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveRobot-response)))
  "Returns string type for a service object of type 'RemoveRobot-response"
  "kautham/RemoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveRobot-response>)))
  "Returns md5sum for a message object of type '<RemoveRobot-response>"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveRobot-response)))
  "Returns md5sum for a message object of type 'RemoveRobot-response"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveRobot-response>)))
  "Returns full string definition for message of type '<RemoveRobot-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveRobot-response)))
  "Returns full string definition for message of type 'RemoveRobot-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveRobot-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveRobot-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveRobot)))
  'RemoveRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveRobot)))
  'RemoveRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveRobot)))
  "Returns string type for a service object of type '<RemoveRobot>"
  "kautham/RemoveRobot")