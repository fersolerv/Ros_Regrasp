; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude AttachObstacle2RobotLink-request.msg.html

(cl:defclass <AttachObstacle2RobotLink-request> (roslisp-msg-protocol:ros-message)
  ((robot
    :reader robot
    :initarg :robot
    :type cl:integer
    :initform 0)
   (link
    :reader link
    :initarg :link
    :type cl:integer
    :initform 0)
   (obs
    :reader obs
    :initarg :obs
    :type cl:integer
    :initform 0))
)

(cl:defclass AttachObstacle2RobotLink-request (<AttachObstacle2RobotLink-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttachObstacle2RobotLink-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttachObstacle2RobotLink-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AttachObstacle2RobotLink-request> is deprecated: use kautham-srv:AttachObstacle2RobotLink-request instead.")))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <AttachObstacle2RobotLink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:robot-val is deprecated.  Use kautham-srv:robot instead.")
  (robot m))

(cl:ensure-generic-function 'link-val :lambda-list '(m))
(cl:defmethod link-val ((m <AttachObstacle2RobotLink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:link-val is deprecated.  Use kautham-srv:link instead.")
  (link m))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <AttachObstacle2RobotLink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:obs-val is deprecated.  Use kautham-srv:obs instead.")
  (obs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttachObstacle2RobotLink-request>) ostream)
  "Serializes a message object of type '<AttachObstacle2RobotLink-request>"
  (cl:let* ((signed (cl:slot-value msg 'robot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'link)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttachObstacle2RobotLink-request>) istream)
  "Deserializes a message object of type '<AttachObstacle2RobotLink-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttachObstacle2RobotLink-request>)))
  "Returns string type for a service object of type '<AttachObstacle2RobotLink-request>"
  "kautham/AttachObstacle2RobotLinkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttachObstacle2RobotLink-request)))
  "Returns string type for a service object of type 'AttachObstacle2RobotLink-request"
  "kautham/AttachObstacle2RobotLinkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttachObstacle2RobotLink-request>)))
  "Returns md5sum for a message object of type '<AttachObstacle2RobotLink-request>"
  "83fcda13fc99c92fdfe2b2077fd18bb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttachObstacle2RobotLink-request)))
  "Returns md5sum for a message object of type 'AttachObstacle2RobotLink-request"
  "83fcda13fc99c92fdfe2b2077fd18bb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttachObstacle2RobotLink-request>)))
  "Returns full string definition for message of type '<AttachObstacle2RobotLink-request>"
  (cl:format cl:nil "int64 robot~%int64 link~%int64 obs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttachObstacle2RobotLink-request)))
  "Returns full string definition for message of type 'AttachObstacle2RobotLink-request"
  (cl:format cl:nil "int64 robot~%int64 link~%int64 obs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttachObstacle2RobotLink-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttachObstacle2RobotLink-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AttachObstacle2RobotLink-request
    (cl:cons ':robot (robot msg))
    (cl:cons ':link (link msg))
    (cl:cons ':obs (obs msg))
))
;//! \htmlinclude AttachObstacle2RobotLink-response.msg.html

(cl:defclass <AttachObstacle2RobotLink-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AttachObstacle2RobotLink-response (<AttachObstacle2RobotLink-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttachObstacle2RobotLink-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttachObstacle2RobotLink-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AttachObstacle2RobotLink-response> is deprecated: use kautham-srv:AttachObstacle2RobotLink-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <AttachObstacle2RobotLink-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttachObstacle2RobotLink-response>) ostream)
  "Serializes a message object of type '<AttachObstacle2RobotLink-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttachObstacle2RobotLink-response>) istream)
  "Deserializes a message object of type '<AttachObstacle2RobotLink-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttachObstacle2RobotLink-response>)))
  "Returns string type for a service object of type '<AttachObstacle2RobotLink-response>"
  "kautham/AttachObstacle2RobotLinkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttachObstacle2RobotLink-response)))
  "Returns string type for a service object of type 'AttachObstacle2RobotLink-response"
  "kautham/AttachObstacle2RobotLinkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttachObstacle2RobotLink-response>)))
  "Returns md5sum for a message object of type '<AttachObstacle2RobotLink-response>"
  "83fcda13fc99c92fdfe2b2077fd18bb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttachObstacle2RobotLink-response)))
  "Returns md5sum for a message object of type 'AttachObstacle2RobotLink-response"
  "83fcda13fc99c92fdfe2b2077fd18bb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttachObstacle2RobotLink-response>)))
  "Returns full string definition for message of type '<AttachObstacle2RobotLink-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttachObstacle2RobotLink-response)))
  "Returns full string definition for message of type 'AttachObstacle2RobotLink-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttachObstacle2RobotLink-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttachObstacle2RobotLink-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AttachObstacle2RobotLink-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AttachObstacle2RobotLink)))
  'AttachObstacle2RobotLink-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AttachObstacle2RobotLink)))
  'AttachObstacle2RobotLink-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttachObstacle2RobotLink)))
  "Returns string type for a service object of type '<AttachObstacle2RobotLink>"
  "kautham/AttachObstacle2RobotLink")