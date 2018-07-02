; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude RemoveObstacle-request.msg.html

(cl:defclass <RemoveObstacle-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass RemoveObstacle-request (<RemoveObstacle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveObstacle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveObstacle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<RemoveObstacle-request> is deprecated: use kautham-srv:RemoveObstacle-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <RemoveObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:index-val is deprecated.  Use kautham-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveObstacle-request>) ostream)
  "Serializes a message object of type '<RemoveObstacle-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveObstacle-request>) istream)
  "Deserializes a message object of type '<RemoveObstacle-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveObstacle-request>)))
  "Returns string type for a service object of type '<RemoveObstacle-request>"
  "kautham/RemoveObstacleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveObstacle-request)))
  "Returns string type for a service object of type 'RemoveObstacle-request"
  "kautham/RemoveObstacleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveObstacle-request>)))
  "Returns md5sum for a message object of type '<RemoveObstacle-request>"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveObstacle-request)))
  "Returns md5sum for a message object of type 'RemoveObstacle-request"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveObstacle-request>)))
  "Returns full string definition for message of type '<RemoveObstacle-request>"
  (cl:format cl:nil "int64 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveObstacle-request)))
  "Returns full string definition for message of type 'RemoveObstacle-request"
  (cl:format cl:nil "int64 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveObstacle-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveObstacle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveObstacle-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude RemoveObstacle-response.msg.html

(cl:defclass <RemoveObstacle-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveObstacle-response (<RemoveObstacle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveObstacle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveObstacle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<RemoveObstacle-response> is deprecated: use kautham-srv:RemoveObstacle-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <RemoveObstacle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveObstacle-response>) ostream)
  "Serializes a message object of type '<RemoveObstacle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveObstacle-response>) istream)
  "Deserializes a message object of type '<RemoveObstacle-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveObstacle-response>)))
  "Returns string type for a service object of type '<RemoveObstacle-response>"
  "kautham/RemoveObstacleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveObstacle-response)))
  "Returns string type for a service object of type 'RemoveObstacle-response"
  "kautham/RemoveObstacleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveObstacle-response>)))
  "Returns md5sum for a message object of type '<RemoveObstacle-response>"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveObstacle-response)))
  "Returns md5sum for a message object of type 'RemoveObstacle-response"
  "78de84fe6cf9abb719ebadece1aaca39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveObstacle-response>)))
  "Returns full string definition for message of type '<RemoveObstacle-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveObstacle-response)))
  "Returns full string definition for message of type 'RemoveObstacle-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveObstacle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveObstacle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveObstacle-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveObstacle)))
  'RemoveObstacle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveObstacle)))
  'RemoveObstacle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveObstacle)))
  "Returns string type for a service object of type '<RemoveObstacle>"
  "kautham/RemoveObstacle")