; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude AddRobot-request.msg.html

(cl:defclass <AddRobot-request> (roslisp-msg-protocol:ros-message)
  ((robot
    :reader robot
    :initarg :robot
    :type cl:string
    :initform "")
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0)
   (home
    :reader home
    :initarg :home
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (limits
    :reader limits
    :initarg :limits
    :type (cl:vector kautham-msg:fVector)
   :initform (cl:make-array 0 :element-type 'kautham-msg:fVector :initial-element (cl:make-instance 'kautham-msg:fVector)))
   (mapMatrix
    :reader mapMatrix
    :initarg :mapMatrix
    :type (cl:vector kautham-msg:fVector)
   :initform (cl:make-array 0 :element-type 'kautham-msg:fVector :initial-element (cl:make-instance 'kautham-msg:fVector)))
   (offMatrix
    :reader offMatrix
    :initarg :offMatrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AddRobot-request (<AddRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AddRobot-request> is deprecated: use kautham-srv:AddRobot-request instead.")))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <AddRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:robot-val is deprecated.  Use kautham-srv:robot instead.")
  (robot m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <AddRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:scale-val is deprecated.  Use kautham-srv:scale instead.")
  (scale m))

(cl:ensure-generic-function 'home-val :lambda-list '(m))
(cl:defmethod home-val ((m <AddRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:home-val is deprecated.  Use kautham-srv:home instead.")
  (home m))

(cl:ensure-generic-function 'limits-val :lambda-list '(m))
(cl:defmethod limits-val ((m <AddRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:limits-val is deprecated.  Use kautham-srv:limits instead.")
  (limits m))

(cl:ensure-generic-function 'mapMatrix-val :lambda-list '(m))
(cl:defmethod mapMatrix-val ((m <AddRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:mapMatrix-val is deprecated.  Use kautham-srv:mapMatrix instead.")
  (mapMatrix m))

(cl:ensure-generic-function 'offMatrix-val :lambda-list '(m))
(cl:defmethod offMatrix-val ((m <AddRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:offMatrix-val is deprecated.  Use kautham-srv:offMatrix instead.")
  (offMatrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddRobot-request>) ostream)
  "Serializes a message object of type '<AddRobot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'home))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'home))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'limits))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mapMatrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mapMatrix))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'offMatrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'offMatrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddRobot-request>) istream)
  "Deserializes a message object of type '<AddRobot-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'home) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'home)))
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
  (cl:setf (cl:slot-value msg 'limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kautham-msg:fVector))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mapMatrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mapMatrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kautham-msg:fVector))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'offMatrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'offMatrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddRobot-request>)))
  "Returns string type for a service object of type '<AddRobot-request>"
  "kautham/AddRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddRobot-request)))
  "Returns string type for a service object of type 'AddRobot-request"
  "kautham/AddRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddRobot-request>)))
  "Returns md5sum for a message object of type '<AddRobot-request>"
  "cd3e6627dc1126b5a84d0fb3747c15da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddRobot-request)))
  "Returns md5sum for a message object of type 'AddRobot-request"
  "cd3e6627dc1126b5a84d0fb3747c15da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddRobot-request>)))
  "Returns full string definition for message of type '<AddRobot-request>"
  (cl:format cl:nil "string robot~%float32 scale~%float32[] home~%fVector[] limits~%fVector[] mapMatrix~%float32[] offMatrix~%~%================================================================================~%MSG: kautham/fVector~%float32[] v~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddRobot-request)))
  "Returns full string definition for message of type 'AddRobot-request"
  (cl:format cl:nil "string robot~%float32 scale~%float32[] home~%fVector[] limits~%fVector[] mapMatrix~%float32[] offMatrix~%~%================================================================================~%MSG: kautham/fVector~%float32[] v~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddRobot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'home) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mapMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'offMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddRobot-request
    (cl:cons ':robot (robot msg))
    (cl:cons ':scale (scale msg))
    (cl:cons ':home (home msg))
    (cl:cons ':limits (limits msg))
    (cl:cons ':mapMatrix (mapMatrix msg))
    (cl:cons ':offMatrix (offMatrix msg))
))
;//! \htmlinclude AddRobot-response.msg.html

(cl:defclass <AddRobot-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:integer
    :initform 0))
)

(cl:defclass AddRobot-response (<AddRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AddRobot-response> is deprecated: use kautham-srv:AddRobot-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <AddRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddRobot-response>) ostream)
  "Serializes a message object of type '<AddRobot-response>"
  (cl:let* ((signed (cl:slot-value msg 'response)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddRobot-response>) istream)
  "Deserializes a message object of type '<AddRobot-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddRobot-response>)))
  "Returns string type for a service object of type '<AddRobot-response>"
  "kautham/AddRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddRobot-response)))
  "Returns string type for a service object of type 'AddRobot-response"
  "kautham/AddRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddRobot-response>)))
  "Returns md5sum for a message object of type '<AddRobot-response>"
  "cd3e6627dc1126b5a84d0fb3747c15da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddRobot-response)))
  "Returns md5sum for a message object of type 'AddRobot-response"
  "cd3e6627dc1126b5a84d0fb3747c15da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddRobot-response>)))
  "Returns full string definition for message of type '<AddRobot-response>"
  (cl:format cl:nil "int64 response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddRobot-response)))
  "Returns full string definition for message of type 'AddRobot-response"
  (cl:format cl:nil "int64 response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddRobot-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddRobot-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddRobot)))
  'AddRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddRobot)))
  'AddRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddRobot)))
  "Returns string type for a service object of type '<AddRobot>"
  "kautham/AddRobot")