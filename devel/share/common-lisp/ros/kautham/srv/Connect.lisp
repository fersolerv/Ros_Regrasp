; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude Connect-request.msg.html

(cl:defclass <Connect-request> (roslisp-msg-protocol:ros-message)
  ((sample1
    :reader sample1
    :initarg :sample1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sample2
    :reader sample2
    :initarg :sample2
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Connect-request (<Connect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<Connect-request> is deprecated: use kautham-srv:Connect-request instead.")))

(cl:ensure-generic-function 'sample1-val :lambda-list '(m))
(cl:defmethod sample1-val ((m <Connect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:sample1-val is deprecated.  Use kautham-srv:sample1 instead.")
  (sample1 m))

(cl:ensure-generic-function 'sample2-val :lambda-list '(m))
(cl:defmethod sample2-val ((m <Connect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:sample2-val is deprecated.  Use kautham-srv:sample2 instead.")
  (sample2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connect-request>) ostream)
  "Serializes a message object of type '<Connect-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sample1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'sample1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sample2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'sample2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connect-request>) istream)
  "Deserializes a message object of type '<Connect-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sample1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sample1)))
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
  (cl:setf (cl:slot-value msg 'sample2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sample2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connect-request>)))
  "Returns string type for a service object of type '<Connect-request>"
  "kautham/ConnectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect-request)))
  "Returns string type for a service object of type 'Connect-request"
  "kautham/ConnectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connect-request>)))
  "Returns md5sum for a message object of type '<Connect-request>"
  "e15133a50988a62627c2a009b2a0334f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connect-request)))
  "Returns md5sum for a message object of type 'Connect-request"
  "e15133a50988a62627c2a009b2a0334f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connect-request>)))
  "Returns full string definition for message of type '<Connect-request>"
  (cl:format cl:nil "float32[] sample1~%float32[] sample2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connect-request)))
  "Returns full string definition for message of type 'Connect-request"
  (cl:format cl:nil "float32[] sample1~%float32[] sample2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connect-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sample1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sample2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Connect-request
    (cl:cons ':sample1 (sample1 msg))
    (cl:cons ':sample2 (sample2 msg))
))
;//! \htmlinclude Connect-response.msg.html

(cl:defclass <Connect-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Connect-response (<Connect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<Connect-response> is deprecated: use kautham-srv:Connect-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <Connect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connect-response>) ostream)
  "Serializes a message object of type '<Connect-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connect-response>) istream)
  "Deserializes a message object of type '<Connect-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connect-response>)))
  "Returns string type for a service object of type '<Connect-response>"
  "kautham/ConnectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect-response)))
  "Returns string type for a service object of type 'Connect-response"
  "kautham/ConnectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connect-response>)))
  "Returns md5sum for a message object of type '<Connect-response>"
  "e15133a50988a62627c2a009b2a0334f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connect-response)))
  "Returns md5sum for a message object of type 'Connect-response"
  "e15133a50988a62627c2a009b2a0334f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connect-response>)))
  "Returns full string definition for message of type '<Connect-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connect-response)))
  "Returns full string definition for message of type 'Connect-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connect-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Connect-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Connect)))
  'Connect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Connect)))
  'Connect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect)))
  "Returns string type for a service object of type '<Connect>"
  "kautham/Connect")