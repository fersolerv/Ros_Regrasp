; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetDefaultRobControls-request.msg.html

(cl:defclass <SetDefaultRobControls-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetDefaultRobControls-request (<SetDefaultRobControls-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDefaultRobControls-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDefaultRobControls-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetDefaultRobControls-request> is deprecated: use kautham-srv:SetDefaultRobControls-request instead.")))

(cl:ensure-generic-function 'init-val :lambda-list '(m))
(cl:defmethod init-val ((m <SetDefaultRobControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:init-val is deprecated.  Use kautham-srv:init instead.")
  (init m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SetDefaultRobControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:goal-val is deprecated.  Use kautham-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDefaultRobControls-request>) ostream)
  "Serializes a message object of type '<SetDefaultRobControls-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDefaultRobControls-request>) istream)
  "Deserializes a message object of type '<SetDefaultRobControls-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDefaultRobControls-request>)))
  "Returns string type for a service object of type '<SetDefaultRobControls-request>"
  "kautham/SetDefaultRobControlsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDefaultRobControls-request)))
  "Returns string type for a service object of type 'SetDefaultRobControls-request"
  "kautham/SetDefaultRobControlsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDefaultRobControls-request>)))
  "Returns md5sum for a message object of type '<SetDefaultRobControls-request>"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDefaultRobControls-request)))
  "Returns md5sum for a message object of type 'SetDefaultRobControls-request"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDefaultRobControls-request>)))
  "Returns full string definition for message of type '<SetDefaultRobControls-request>"
  (cl:format cl:nil "float32[] init~%float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDefaultRobControls-request)))
  "Returns full string definition for message of type 'SetDefaultRobControls-request"
  (cl:format cl:nil "float32[] init~%float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDefaultRobControls-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'init) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDefaultRobControls-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDefaultRobControls-request
    (cl:cons ':init (init msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude SetDefaultRobControls-response.msg.html

(cl:defclass <SetDefaultRobControls-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDefaultRobControls-response (<SetDefaultRobControls-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDefaultRobControls-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDefaultRobControls-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetDefaultRobControls-response> is deprecated: use kautham-srv:SetDefaultRobControls-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetDefaultRobControls-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDefaultRobControls-response>) ostream)
  "Serializes a message object of type '<SetDefaultRobControls-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDefaultRobControls-response>) istream)
  "Deserializes a message object of type '<SetDefaultRobControls-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDefaultRobControls-response>)))
  "Returns string type for a service object of type '<SetDefaultRobControls-response>"
  "kautham/SetDefaultRobControlsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDefaultRobControls-response)))
  "Returns string type for a service object of type 'SetDefaultRobControls-response"
  "kautham/SetDefaultRobControlsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDefaultRobControls-response>)))
  "Returns md5sum for a message object of type '<SetDefaultRobControls-response>"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDefaultRobControls-response)))
  "Returns md5sum for a message object of type 'SetDefaultRobControls-response"
  "b159fe2f0c57653b71c6e33b23ba4f36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDefaultRobControls-response>)))
  "Returns full string definition for message of type '<SetDefaultRobControls-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDefaultRobControls-response)))
  "Returns full string definition for message of type 'SetDefaultRobControls-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDefaultRobControls-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDefaultRobControls-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDefaultRobControls-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDefaultRobControls)))
  'SetDefaultRobControls-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDefaultRobControls)))
  'SetDefaultRobControls-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDefaultRobControls)))
  "Returns string type for a service object of type '<SetDefaultRobControls>"
  "kautham/SetDefaultRobControls")