; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude Forbidden-request.msg.html

(cl:defclass <Forbidden-request> (roslisp-msg-protocol:ros-message)
  ((forbiddens
    :reader forbiddens
    :initarg :forbiddens
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Forbidden-request (<Forbidden-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Forbidden-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Forbidden-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<Forbidden-request> is deprecated: use kautham-srv:Forbidden-request instead.")))

(cl:ensure-generic-function 'forbiddens-val :lambda-list '(m))
(cl:defmethod forbiddens-val ((m <Forbidden-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:forbiddens-val is deprecated.  Use kautham-srv:forbiddens instead.")
  (forbiddens m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Forbidden-request>) ostream)
  "Serializes a message object of type '<Forbidden-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'forbiddens))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'forbiddens))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Forbidden-request>) istream)
  "Deserializes a message object of type '<Forbidden-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'forbiddens) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'forbiddens)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Forbidden-request>)))
  "Returns string type for a service object of type '<Forbidden-request>"
  "kautham/ForbiddenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Forbidden-request)))
  "Returns string type for a service object of type 'Forbidden-request"
  "kautham/ForbiddenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Forbidden-request>)))
  "Returns md5sum for a message object of type '<Forbidden-request>"
  "3dd11fd9c095043031270a2382709829")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Forbidden-request)))
  "Returns md5sum for a message object of type 'Forbidden-request"
  "3dd11fd9c095043031270a2382709829")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Forbidden-request>)))
  "Returns full string definition for message of type '<Forbidden-request>"
  (cl:format cl:nil "uint32[] forbiddens~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Forbidden-request)))
  "Returns full string definition for message of type 'Forbidden-request"
  (cl:format cl:nil "uint32[] forbiddens~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Forbidden-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'forbiddens) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Forbidden-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Forbidden-request
    (cl:cons ':forbiddens (forbiddens msg))
))
;//! \htmlinclude Forbidden-response.msg.html

(cl:defclass <Forbidden-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Forbidden-response (<Forbidden-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Forbidden-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Forbidden-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<Forbidden-response> is deprecated: use kautham-srv:Forbidden-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Forbidden-response>) ostream)
  "Serializes a message object of type '<Forbidden-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Forbidden-response>) istream)
  "Deserializes a message object of type '<Forbidden-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Forbidden-response>)))
  "Returns string type for a service object of type '<Forbidden-response>"
  "kautham/ForbiddenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Forbidden-response)))
  "Returns string type for a service object of type 'Forbidden-response"
  "kautham/ForbiddenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Forbidden-response>)))
  "Returns md5sum for a message object of type '<Forbidden-response>"
  "3dd11fd9c095043031270a2382709829")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Forbidden-response)))
  "Returns md5sum for a message object of type 'Forbidden-response"
  "3dd11fd9c095043031270a2382709829")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Forbidden-response>)))
  "Returns full string definition for message of type '<Forbidden-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Forbidden-response)))
  "Returns full string definition for message of type 'Forbidden-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Forbidden-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Forbidden-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Forbidden-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Forbidden)))
  'Forbidden-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Forbidden)))
  'Forbidden-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Forbidden)))
  "Returns string type for a service object of type '<Forbidden>"
  "kautham/Forbidden")