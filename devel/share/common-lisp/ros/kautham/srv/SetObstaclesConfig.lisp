; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetObstaclesConfig-request.msg.html

(cl:defclass <SetObstaclesConfig-request> (roslisp-msg-protocol:ros-message)
  ((config
    :reader config
    :initarg :config
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetObstaclesConfig-request (<SetObstaclesConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstaclesConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstaclesConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetObstaclesConfig-request> is deprecated: use kautham-srv:SetObstaclesConfig-request instead.")))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <SetObstaclesConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:config-val is deprecated.  Use kautham-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstaclesConfig-request>) ostream)
  "Serializes a message object of type '<SetObstaclesConfig-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'config))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'config))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstaclesConfig-request>) istream)
  "Deserializes a message object of type '<SetObstaclesConfig-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'config) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'config)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstaclesConfig-request>)))
  "Returns string type for a service object of type '<SetObstaclesConfig-request>"
  "kautham/SetObstaclesConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstaclesConfig-request)))
  "Returns string type for a service object of type 'SetObstaclesConfig-request"
  "kautham/SetObstaclesConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstaclesConfig-request>)))
  "Returns md5sum for a message object of type '<SetObstaclesConfig-request>"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstaclesConfig-request)))
  "Returns md5sum for a message object of type 'SetObstaclesConfig-request"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstaclesConfig-request>)))
  "Returns full string definition for message of type '<SetObstaclesConfig-request>"
  (cl:format cl:nil "float32[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstaclesConfig-request)))
  "Returns full string definition for message of type 'SetObstaclesConfig-request"
  (cl:format cl:nil "float32[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstaclesConfig-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'config) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstaclesConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstaclesConfig-request
    (cl:cons ':config (config msg))
))
;//! \htmlinclude SetObstaclesConfig-response.msg.html

(cl:defclass <SetObstaclesConfig-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetObstaclesConfig-response (<SetObstaclesConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObstaclesConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObstaclesConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetObstaclesConfig-response> is deprecated: use kautham-srv:SetObstaclesConfig-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetObstaclesConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObstaclesConfig-response>) ostream)
  "Serializes a message object of type '<SetObstaclesConfig-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObstaclesConfig-response>) istream)
  "Deserializes a message object of type '<SetObstaclesConfig-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObstaclesConfig-response>)))
  "Returns string type for a service object of type '<SetObstaclesConfig-response>"
  "kautham/SetObstaclesConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstaclesConfig-response)))
  "Returns string type for a service object of type 'SetObstaclesConfig-response"
  "kautham/SetObstaclesConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObstaclesConfig-response>)))
  "Returns md5sum for a message object of type '<SetObstaclesConfig-response>"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObstaclesConfig-response)))
  "Returns md5sum for a message object of type 'SetObstaclesConfig-response"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObstaclesConfig-response>)))
  "Returns full string definition for message of type '<SetObstaclesConfig-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObstaclesConfig-response)))
  "Returns full string definition for message of type 'SetObstaclesConfig-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObstaclesConfig-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObstaclesConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObstaclesConfig-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObstaclesConfig)))
  'SetObstaclesConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObstaclesConfig)))
  'SetObstaclesConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObstaclesConfig)))
  "Returns string type for a service object of type '<SetObstaclesConfig>"
  "kautham/SetObstaclesConfig")