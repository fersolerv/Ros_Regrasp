; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude EraseObj-request.msg.html

(cl:defclass <EraseObj-request> (roslisp-msg-protocol:ros-message)
  ((Obj
    :reader Obj
    :initarg :Obj
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EraseObj-request (<EraseObj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EraseObj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EraseObj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<EraseObj-request> is deprecated: use kautham-srv:EraseObj-request instead.")))

(cl:ensure-generic-function 'Obj-val :lambda-list '(m))
(cl:defmethod Obj-val ((m <EraseObj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Obj-val is deprecated.  Use kautham-srv:Obj instead.")
  (Obj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EraseObj-request>) ostream)
  "Serializes a message object of type '<EraseObj-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Obj)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EraseObj-request>) istream)
  "Deserializes a message object of type '<EraseObj-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Obj)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EraseObj-request>)))
  "Returns string type for a service object of type '<EraseObj-request>"
  "kautham/EraseObjRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EraseObj-request)))
  "Returns string type for a service object of type 'EraseObj-request"
  "kautham/EraseObjRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EraseObj-request>)))
  "Returns md5sum for a message object of type '<EraseObj-request>"
  "28f83b3cf422f398809c60015edec252")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EraseObj-request)))
  "Returns md5sum for a message object of type 'EraseObj-request"
  "28f83b3cf422f398809c60015edec252")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EraseObj-request>)))
  "Returns full string definition for message of type '<EraseObj-request>"
  (cl:format cl:nil "uint8 Obj~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EraseObj-request)))
  "Returns full string definition for message of type 'EraseObj-request"
  (cl:format cl:nil "uint8 Obj~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EraseObj-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EraseObj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EraseObj-request
    (cl:cons ':Obj (Obj msg))
))
;//! \htmlinclude EraseObj-response.msg.html

(cl:defclass <EraseObj-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EraseObj-response (<EraseObj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EraseObj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EraseObj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<EraseObj-response> is deprecated: use kautham-srv:EraseObj-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <EraseObj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EraseObj-response>) ostream)
  "Serializes a message object of type '<EraseObj-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EraseObj-response>) istream)
  "Deserializes a message object of type '<EraseObj-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EraseObj-response>)))
  "Returns string type for a service object of type '<EraseObj-response>"
  "kautham/EraseObjResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EraseObj-response)))
  "Returns string type for a service object of type 'EraseObj-response"
  "kautham/EraseObjResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EraseObj-response>)))
  "Returns md5sum for a message object of type '<EraseObj-response>"
  "28f83b3cf422f398809c60015edec252")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EraseObj-response)))
  "Returns md5sum for a message object of type 'EraseObj-response"
  "28f83b3cf422f398809c60015edec252")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EraseObj-response>)))
  "Returns full string definition for message of type '<EraseObj-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EraseObj-response)))
  "Returns full string definition for message of type 'EraseObj-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EraseObj-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EraseObj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EraseObj-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EraseObj)))
  'EraseObj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EraseObj)))
  'EraseObj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EraseObj)))
  "Returns string type for a service object of type '<EraseObj>"
  "kautham/EraseObj")