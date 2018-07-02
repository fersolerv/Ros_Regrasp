; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude GetNumVertices-request.msg.html

(cl:defclass <GetNumVertices-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNumVertices-request (<GetNumVertices-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNumVertices-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNumVertices-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetNumVertices-request> is deprecated: use kautham-srv:GetNumVertices-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNumVertices-request>) ostream)
  "Serializes a message object of type '<GetNumVertices-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNumVertices-request>) istream)
  "Deserializes a message object of type '<GetNumVertices-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNumVertices-request>)))
  "Returns string type for a service object of type '<GetNumVertices-request>"
  "kautham/GetNumVerticesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNumVertices-request)))
  "Returns string type for a service object of type 'GetNumVertices-request"
  "kautham/GetNumVerticesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNumVertices-request>)))
  "Returns md5sum for a message object of type '<GetNumVertices-request>"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNumVertices-request)))
  "Returns md5sum for a message object of type 'GetNumVertices-request"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNumVertices-request>)))
  "Returns full string definition for message of type '<GetNumVertices-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNumVertices-request)))
  "Returns full string definition for message of type 'GetNumVertices-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNumVertices-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNumVertices-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNumVertices-request
))
;//! \htmlinclude GetNumVertices-response.msg.html

(cl:defclass <GetNumVertices-response> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass GetNumVertices-response (<GetNumVertices-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNumVertices-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNumVertices-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetNumVertices-response> is deprecated: use kautham-srv:GetNumVertices-response instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <GetNumVertices-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:num-val is deprecated.  Use kautham-srv:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNumVertices-response>) ostream)
  "Serializes a message object of type '<GetNumVertices-response>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNumVertices-response>) istream)
  "Deserializes a message object of type '<GetNumVertices-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNumVertices-response>)))
  "Returns string type for a service object of type '<GetNumVertices-response>"
  "kautham/GetNumVerticesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNumVertices-response)))
  "Returns string type for a service object of type 'GetNumVertices-response"
  "kautham/GetNumVerticesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNumVertices-response>)))
  "Returns md5sum for a message object of type '<GetNumVertices-response>"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNumVertices-response)))
  "Returns md5sum for a message object of type 'GetNumVertices-response"
  "54b3c80efd6fae6e6ffff8a4b9facd69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNumVertices-response>)))
  "Returns full string definition for message of type '<GetNumVertices-response>"
  (cl:format cl:nil "int32 num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNumVertices-response)))
  "Returns full string definition for message of type 'GetNumVertices-response"
  (cl:format cl:nil "int32 num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNumVertices-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNumVertices-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNumVertices-response
    (cl:cons ':num (num msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNumVertices)))
  'GetNumVertices-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNumVertices)))
  'GetNumVertices-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNumVertices)))
  "Returns string type for a service object of type '<GetNumVertices>"
  "kautham/GetNumVertices")