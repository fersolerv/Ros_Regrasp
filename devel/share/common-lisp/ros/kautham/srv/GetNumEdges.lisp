; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude GetNumEdges-request.msg.html

(cl:defclass <GetNumEdges-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNumEdges-request (<GetNumEdges-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNumEdges-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNumEdges-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetNumEdges-request> is deprecated: use kautham-srv:GetNumEdges-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNumEdges-request>) ostream)
  "Serializes a message object of type '<GetNumEdges-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNumEdges-request>) istream)
  "Deserializes a message object of type '<GetNumEdges-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNumEdges-request>)))
  "Returns string type for a service object of type '<GetNumEdges-request>"
  "kautham/GetNumEdgesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNumEdges-request)))
  "Returns string type for a service object of type 'GetNumEdges-request"
  "kautham/GetNumEdgesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNumEdges-request>)))
  "Returns md5sum for a message object of type '<GetNumEdges-request>"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNumEdges-request)))
  "Returns md5sum for a message object of type 'GetNumEdges-request"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNumEdges-request>)))
  "Returns full string definition for message of type '<GetNumEdges-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNumEdges-request)))
  "Returns full string definition for message of type 'GetNumEdges-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNumEdges-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNumEdges-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNumEdges-request
))
;//! \htmlinclude GetNumEdges-response.msg.html

(cl:defclass <GetNumEdges-response> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass GetNumEdges-response (<GetNumEdges-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNumEdges-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNumEdges-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetNumEdges-response> is deprecated: use kautham-srv:GetNumEdges-response instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <GetNumEdges-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:num-val is deprecated.  Use kautham-srv:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNumEdges-response>) ostream)
  "Serializes a message object of type '<GetNumEdges-response>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNumEdges-response>) istream)
  "Deserializes a message object of type '<GetNumEdges-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNumEdges-response>)))
  "Returns string type for a service object of type '<GetNumEdges-response>"
  "kautham/GetNumEdgesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNumEdges-response)))
  "Returns string type for a service object of type 'GetNumEdges-response"
  "kautham/GetNumEdgesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNumEdges-response>)))
  "Returns md5sum for a message object of type '<GetNumEdges-response>"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNumEdges-response)))
  "Returns md5sum for a message object of type 'GetNumEdges-response"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNumEdges-response>)))
  "Returns full string definition for message of type '<GetNumEdges-response>"
  (cl:format cl:nil "int32 num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNumEdges-response)))
  "Returns full string definition for message of type 'GetNumEdges-response"
  (cl:format cl:nil "int32 num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNumEdges-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNumEdges-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNumEdges-response
    (cl:cons ':num (num msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNumEdges)))
  'GetNumEdges-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNumEdges)))
  'GetNumEdges-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNumEdges)))
  "Returns string type for a service object of type '<GetNumEdges>"
  "kautham/GetNumEdges")