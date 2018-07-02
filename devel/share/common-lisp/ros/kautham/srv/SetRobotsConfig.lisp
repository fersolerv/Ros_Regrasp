; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetRobotsConfig-request.msg.html

(cl:defclass <SetRobotsConfig-request> (roslisp-msg-protocol:ros-message)
  ((config
    :reader config
    :initarg :config
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetRobotsConfig-request (<SetRobotsConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotsConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotsConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetRobotsConfig-request> is deprecated: use kautham-srv:SetRobotsConfig-request instead.")))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <SetRobotsConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:config-val is deprecated.  Use kautham-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotsConfig-request>) ostream)
  "Serializes a message object of type '<SetRobotsConfig-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotsConfig-request>) istream)
  "Deserializes a message object of type '<SetRobotsConfig-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotsConfig-request>)))
  "Returns string type for a service object of type '<SetRobotsConfig-request>"
  "kautham/SetRobotsConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotsConfig-request)))
  "Returns string type for a service object of type 'SetRobotsConfig-request"
  "kautham/SetRobotsConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotsConfig-request>)))
  "Returns md5sum for a message object of type '<SetRobotsConfig-request>"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotsConfig-request)))
  "Returns md5sum for a message object of type 'SetRobotsConfig-request"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotsConfig-request>)))
  "Returns full string definition for message of type '<SetRobotsConfig-request>"
  (cl:format cl:nil "float32[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotsConfig-request)))
  "Returns full string definition for message of type 'SetRobotsConfig-request"
  (cl:format cl:nil "float32[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotsConfig-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'config) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotsConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotsConfig-request
    (cl:cons ':config (config msg))
))
;//! \htmlinclude SetRobotsConfig-response.msg.html

(cl:defclass <SetRobotsConfig-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetRobotsConfig-response (<SetRobotsConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotsConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotsConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetRobotsConfig-response> is deprecated: use kautham-srv:SetRobotsConfig-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetRobotsConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotsConfig-response>) ostream)
  "Serializes a message object of type '<SetRobotsConfig-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotsConfig-response>) istream)
  "Deserializes a message object of type '<SetRobotsConfig-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotsConfig-response>)))
  "Returns string type for a service object of type '<SetRobotsConfig-response>"
  "kautham/SetRobotsConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotsConfig-response)))
  "Returns string type for a service object of type 'SetRobotsConfig-response"
  "kautham/SetRobotsConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotsConfig-response>)))
  "Returns md5sum for a message object of type '<SetRobotsConfig-response>"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotsConfig-response)))
  "Returns md5sum for a message object of type 'SetRobotsConfig-response"
  "9287d4cd9e206a65548b15895e2aa046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotsConfig-response>)))
  "Returns full string definition for message of type '<SetRobotsConfig-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotsConfig-response)))
  "Returns full string definition for message of type 'SetRobotsConfig-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotsConfig-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotsConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotsConfig-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRobotsConfig)))
  'SetRobotsConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRobotsConfig)))
  'SetRobotsConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotsConfig)))
  "Returns string type for a service object of type '<SetRobotsConfig>"
  "kautham/SetRobotsConfig")