; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetQuery-request.msg.html

(cl:defclass <SetQuery-request> (roslisp-msg-protocol:ros-message)
  ((init
    :reader init
    :initarg :init
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal
    :reader goal
    :initarg :goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetQuery-request (<SetQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetQuery-request> is deprecated: use kautham-srv:SetQuery-request instead.")))

(cl:ensure-generic-function 'init-val :lambda-list '(m))
(cl:defmethod init-val ((m <SetQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:init-val is deprecated.  Use kautham-srv:init instead.")
  (init m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SetQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:goal-val is deprecated.  Use kautham-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQuery-request>) ostream)
  "Serializes a message object of type '<SetQuery-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQuery-request>) istream)
  "Deserializes a message object of type '<SetQuery-request>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQuery-request>)))
  "Returns string type for a service object of type '<SetQuery-request>"
  "kautham/SetQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQuery-request)))
  "Returns string type for a service object of type 'SetQuery-request"
  "kautham/SetQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQuery-request>)))
  "Returns md5sum for a message object of type '<SetQuery-request>"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQuery-request)))
  "Returns md5sum for a message object of type 'SetQuery-request"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQuery-request>)))
  "Returns full string definition for message of type '<SetQuery-request>"
  (cl:format cl:nil "float32[] init~%float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQuery-request)))
  "Returns full string definition for message of type 'SetQuery-request"
  (cl:format cl:nil "float32[] init~%float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQuery-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'init) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQuery-request
    (cl:cons ':init (init msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude SetQuery-response.msg.html

(cl:defclass <SetQuery-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetQuery-response (<SetQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetQuery-response> is deprecated: use kautham-srv:SetQuery-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetQuery-response>) ostream)
  "Serializes a message object of type '<SetQuery-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetQuery-response>) istream)
  "Deserializes a message object of type '<SetQuery-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetQuery-response>)))
  "Returns string type for a service object of type '<SetQuery-response>"
  "kautham/SetQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQuery-response)))
  "Returns string type for a service object of type 'SetQuery-response"
  "kautham/SetQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetQuery-response>)))
  "Returns md5sum for a message object of type '<SetQuery-response>"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetQuery-response)))
  "Returns md5sum for a message object of type 'SetQuery-response"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetQuery-response>)))
  "Returns full string definition for message of type '<SetQuery-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetQuery-response)))
  "Returns full string definition for message of type 'SetQuery-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetQuery-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetQuery-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetQuery)))
  'SetQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetQuery)))
  'SetQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetQuery)))
  "Returns string type for a service object of type '<SetQuery>"
  "kautham/SetQuery")