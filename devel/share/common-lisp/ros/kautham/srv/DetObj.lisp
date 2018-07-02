; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude DetObj-request.msg.html

(cl:defclass <DetObj-request> (roslisp-msg-protocol:ros-message)
  ((Robot
    :reader Robot
    :initarg :Robot
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DetObj-request (<DetObj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetObj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetObj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<DetObj-request> is deprecated: use kautham-srv:DetObj-request instead.")))

(cl:ensure-generic-function 'Robot-val :lambda-list '(m))
(cl:defmethod Robot-val ((m <DetObj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Robot-val is deprecated.  Use kautham-srv:Robot instead.")
  (Robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetObj-request>) ostream)
  "Serializes a message object of type '<DetObj-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Robot)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetObj-request>) istream)
  "Deserializes a message object of type '<DetObj-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Robot)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetObj-request>)))
  "Returns string type for a service object of type '<DetObj-request>"
  "kautham/DetObjRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetObj-request)))
  "Returns string type for a service object of type 'DetObj-request"
  "kautham/DetObjRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetObj-request>)))
  "Returns md5sum for a message object of type '<DetObj-request>"
  "79119dbb446177d158e27c1acabbfb64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetObj-request)))
  "Returns md5sum for a message object of type 'DetObj-request"
  "79119dbb446177d158e27c1acabbfb64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetObj-request>)))
  "Returns full string definition for message of type '<DetObj-request>"
  (cl:format cl:nil "uint8 Robot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetObj-request)))
  "Returns full string definition for message of type 'DetObj-request"
  (cl:format cl:nil "uint8 Robot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetObj-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetObj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetObj-request
    (cl:cons ':Robot (Robot msg))
))
;//! \htmlinclude DetObj-response.msg.html

(cl:defclass <DetObj-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DetObj-response (<DetObj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetObj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetObj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<DetObj-response> is deprecated: use kautham-srv:DetObj-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DetObj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetObj-response>) ostream)
  "Serializes a message object of type '<DetObj-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetObj-response>) istream)
  "Deserializes a message object of type '<DetObj-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetObj-response>)))
  "Returns string type for a service object of type '<DetObj-response>"
  "kautham/DetObjResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetObj-response)))
  "Returns string type for a service object of type 'DetObj-response"
  "kautham/DetObjResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetObj-response>)))
  "Returns md5sum for a message object of type '<DetObj-response>"
  "79119dbb446177d158e27c1acabbfb64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetObj-response)))
  "Returns md5sum for a message object of type 'DetObj-response"
  "79119dbb446177d158e27c1acabbfb64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetObj-response>)))
  "Returns full string definition for message of type '<DetObj-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetObj-response)))
  "Returns full string definition for message of type 'DetObj-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetObj-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetObj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetObj-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetObj)))
  'DetObj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetObj)))
  'DetObj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetObj)))
  "Returns string type for a service object of type '<DetObj>"
  "kautham/DetObj")