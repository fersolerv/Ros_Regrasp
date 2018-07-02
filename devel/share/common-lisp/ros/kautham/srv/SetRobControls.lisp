; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetRobControls-request.msg.html

(cl:defclass <SetRobControls-request> (roslisp-msg-protocol:ros-message)
  ((controls
    :reader controls
    :initarg :controls
    :type cl:string
    :initform "")
   (init
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

(cl:defclass SetRobControls-request (<SetRobControls-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobControls-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobControls-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetRobControls-request> is deprecated: use kautham-srv:SetRobControls-request instead.")))

(cl:ensure-generic-function 'controls-val :lambda-list '(m))
(cl:defmethod controls-val ((m <SetRobControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:controls-val is deprecated.  Use kautham-srv:controls instead.")
  (controls m))

(cl:ensure-generic-function 'init-val :lambda-list '(m))
(cl:defmethod init-val ((m <SetRobControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:init-val is deprecated.  Use kautham-srv:init instead.")
  (init m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SetRobControls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:goal-val is deprecated.  Use kautham-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobControls-request>) ostream)
  "Serializes a message object of type '<SetRobControls-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controls))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobControls-request>) istream)
  "Deserializes a message object of type '<SetRobControls-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controls) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controls) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobControls-request>)))
  "Returns string type for a service object of type '<SetRobControls-request>"
  "kautham/SetRobControlsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobControls-request)))
  "Returns string type for a service object of type 'SetRobControls-request"
  "kautham/SetRobControlsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobControls-request>)))
  "Returns md5sum for a message object of type '<SetRobControls-request>"
  "70a7c4a4236b2afb69f24ca18116c470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobControls-request)))
  "Returns md5sum for a message object of type 'SetRobControls-request"
  "70a7c4a4236b2afb69f24ca18116c470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobControls-request>)))
  "Returns full string definition for message of type '<SetRobControls-request>"
  (cl:format cl:nil "string controls~%float32[] init~%float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobControls-request)))
  "Returns full string definition for message of type 'SetRobControls-request"
  (cl:format cl:nil "string controls~%float32[] init~%float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobControls-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'controls))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'init) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobControls-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobControls-request
    (cl:cons ':controls (controls msg))
    (cl:cons ':init (init msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude SetRobControls-response.msg.html

(cl:defclass <SetRobControls-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetRobControls-response (<SetRobControls-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobControls-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobControls-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetRobControls-response> is deprecated: use kautham-srv:SetRobControls-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetRobControls-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobControls-response>) ostream)
  "Serializes a message object of type '<SetRobControls-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobControls-response>) istream)
  "Deserializes a message object of type '<SetRobControls-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobControls-response>)))
  "Returns string type for a service object of type '<SetRobControls-response>"
  "kautham/SetRobControlsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobControls-response)))
  "Returns string type for a service object of type 'SetRobControls-response"
  "kautham/SetRobControlsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobControls-response>)))
  "Returns md5sum for a message object of type '<SetRobControls-response>"
  "70a7c4a4236b2afb69f24ca18116c470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobControls-response)))
  "Returns md5sum for a message object of type 'SetRobControls-response"
  "70a7c4a4236b2afb69f24ca18116c470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobControls-response>)))
  "Returns full string definition for message of type '<SetRobControls-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobControls-response)))
  "Returns full string definition for message of type 'SetRobControls-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobControls-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobControls-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobControls-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRobControls)))
  'SetRobControls-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRobControls)))
  'SetRobControls-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobControls)))
  "Returns string type for a service object of type '<SetRobControls>"
  "kautham/SetRobControls")