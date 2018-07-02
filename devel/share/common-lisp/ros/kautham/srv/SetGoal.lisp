; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetGoal-request.msg.html

(cl:defclass <SetGoal-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetGoal-request (<SetGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetGoal-request> is deprecated: use kautham-srv:SetGoal-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SetGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:goal-val is deprecated.  Use kautham-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-request>) ostream)
  "Serializes a message object of type '<SetGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-request>) istream)
  "Deserializes a message object of type '<SetGoal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-request>)))
  "Returns string type for a service object of type '<SetGoal-request>"
  "kautham/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-request)))
  "Returns string type for a service object of type 'SetGoal-request"
  "kautham/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-request>)))
  "Returns md5sum for a message object of type '<SetGoal-request>"
  "16f49ae62b5ab7a74082e92a38db2489")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-request)))
  "Returns md5sum for a message object of type 'SetGoal-request"
  "16f49ae62b5ab7a74082e92a38db2489")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-request>)))
  "Returns full string definition for message of type '<SetGoal-request>"
  (cl:format cl:nil "float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-request)))
  "Returns full string definition for message of type 'SetGoal-request"
  (cl:format cl:nil "float32[] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude SetGoal-response.msg.html

(cl:defclass <SetGoal-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGoal-response (<SetGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetGoal-response> is deprecated: use kautham-srv:SetGoal-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-response>) ostream)
  "Serializes a message object of type '<SetGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-response>) istream)
  "Deserializes a message object of type '<SetGoal-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-response>)))
  "Returns string type for a service object of type '<SetGoal-response>"
  "kautham/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-response)))
  "Returns string type for a service object of type 'SetGoal-response"
  "kautham/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-response>)))
  "Returns md5sum for a message object of type '<SetGoal-response>"
  "16f49ae62b5ab7a74082e92a38db2489")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-response)))
  "Returns md5sum for a message object of type 'SetGoal-response"
  "16f49ae62b5ab7a74082e92a38db2489")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-response>)))
  "Returns full string definition for message of type '<SetGoal-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-response)))
  "Returns full string definition for message of type 'SetGoal-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal)))
  "Returns string type for a service object of type '<SetGoal>"
  "kautham/SetGoal")