; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetInit-request.msg.html

(cl:defclass <SetInit-request> (roslisp-msg-protocol:ros-message)
  ((init
    :reader init
    :initarg :init
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetInit-request (<SetInit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetInit-request> is deprecated: use kautham-srv:SetInit-request instead.")))

(cl:ensure-generic-function 'init-val :lambda-list '(m))
(cl:defmethod init-val ((m <SetInit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:init-val is deprecated.  Use kautham-srv:init instead.")
  (init m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInit-request>) ostream)
  "Serializes a message object of type '<SetInit-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'init))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'init))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInit-request>) istream)
  "Deserializes a message object of type '<SetInit-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'init) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'init)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInit-request>)))
  "Returns string type for a service object of type '<SetInit-request>"
  "kautham/SetInitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInit-request)))
  "Returns string type for a service object of type 'SetInit-request"
  "kautham/SetInitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInit-request>)))
  "Returns md5sum for a message object of type '<SetInit-request>"
  "f934e3a24582141264303506bb07b80d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInit-request)))
  "Returns md5sum for a message object of type 'SetInit-request"
  "f934e3a24582141264303506bb07b80d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInit-request>)))
  "Returns full string definition for message of type '<SetInit-request>"
  (cl:format cl:nil "float32[] init~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInit-request)))
  "Returns full string definition for message of type 'SetInit-request"
  (cl:format cl:nil "float32[] init~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInit-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'init) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInit-request
    (cl:cons ':init (init msg))
))
;//! \htmlinclude SetInit-response.msg.html

(cl:defclass <SetInit-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetInit-response (<SetInit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetInit-response> is deprecated: use kautham-srv:SetInit-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetInit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInit-response>) ostream)
  "Serializes a message object of type '<SetInit-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInit-response>) istream)
  "Deserializes a message object of type '<SetInit-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInit-response>)))
  "Returns string type for a service object of type '<SetInit-response>"
  "kautham/SetInitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInit-response)))
  "Returns string type for a service object of type 'SetInit-response"
  "kautham/SetInitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInit-response>)))
  "Returns md5sum for a message object of type '<SetInit-response>"
  "f934e3a24582141264303506bb07b80d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInit-response)))
  "Returns md5sum for a message object of type 'SetInit-response"
  "f934e3a24582141264303506bb07b80d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInit-response>)))
  "Returns full string definition for message of type '<SetInit-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInit-response)))
  "Returns full string definition for message of type 'SetInit-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInit-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInit-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInit)))
  'SetInit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInit)))
  'SetInit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInit)))
  "Returns string type for a service object of type '<SetInit>"
  "kautham/SetInit")