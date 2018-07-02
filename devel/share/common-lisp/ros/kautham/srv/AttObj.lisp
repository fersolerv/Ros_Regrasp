; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude AttObj-request.msg.html

(cl:defclass <AttObj-request> (roslisp-msg-protocol:ros-message)
  ((Robot
    :reader Robot
    :initarg :Robot
    :type cl:fixnum
    :initform 0)
   (Obj
    :reader Obj
    :initarg :Obj
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AttObj-request (<AttObj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttObj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttObj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AttObj-request> is deprecated: use kautham-srv:AttObj-request instead.")))

(cl:ensure-generic-function 'Robot-val :lambda-list '(m))
(cl:defmethod Robot-val ((m <AttObj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Robot-val is deprecated.  Use kautham-srv:Robot instead.")
  (Robot m))

(cl:ensure-generic-function 'Obj-val :lambda-list '(m))
(cl:defmethod Obj-val ((m <AttObj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Obj-val is deprecated.  Use kautham-srv:Obj instead.")
  (Obj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttObj-request>) ostream)
  "Serializes a message object of type '<AttObj-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Obj)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttObj-request>) istream)
  "Deserializes a message object of type '<AttObj-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Obj)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttObj-request>)))
  "Returns string type for a service object of type '<AttObj-request>"
  "kautham/AttObjRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttObj-request)))
  "Returns string type for a service object of type 'AttObj-request"
  "kautham/AttObjRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttObj-request>)))
  "Returns md5sum for a message object of type '<AttObj-request>"
  "9a855f81332331d825acf19b9a7d3200")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttObj-request)))
  "Returns md5sum for a message object of type 'AttObj-request"
  "9a855f81332331d825acf19b9a7d3200")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttObj-request>)))
  "Returns full string definition for message of type '<AttObj-request>"
  (cl:format cl:nil "uint8 Robot~%uint8 Obj~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttObj-request)))
  "Returns full string definition for message of type 'AttObj-request"
  (cl:format cl:nil "uint8 Robot~%uint8 Obj~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttObj-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttObj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AttObj-request
    (cl:cons ':Robot (Robot msg))
    (cl:cons ':Obj (Obj msg))
))
;//! \htmlinclude AttObj-response.msg.html

(cl:defclass <AttObj-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AttObj-response (<AttObj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttObj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttObj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AttObj-response> is deprecated: use kautham-srv:AttObj-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AttObj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttObj-response>) ostream)
  "Serializes a message object of type '<AttObj-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttObj-response>) istream)
  "Deserializes a message object of type '<AttObj-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttObj-response>)))
  "Returns string type for a service object of type '<AttObj-response>"
  "kautham/AttObjResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttObj-response)))
  "Returns string type for a service object of type 'AttObj-response"
  "kautham/AttObjResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttObj-response>)))
  "Returns md5sum for a message object of type '<AttObj-response>"
  "9a855f81332331d825acf19b9a7d3200")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttObj-response)))
  "Returns md5sum for a message object of type 'AttObj-response"
  "9a855f81332331d825acf19b9a7d3200")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttObj-response>)))
  "Returns full string definition for message of type '<AttObj-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttObj-response)))
  "Returns full string definition for message of type 'AttObj-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttObj-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttObj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AttObj-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AttObj)))
  'AttObj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AttObj)))
  'AttObj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttObj)))
  "Returns string type for a service object of type '<AttObj>"
  "kautham/AttObj")