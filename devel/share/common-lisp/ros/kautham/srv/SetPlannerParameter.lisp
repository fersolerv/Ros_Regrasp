; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetPlannerParameter-request.msg.html

(cl:defclass <SetPlannerParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass SetPlannerParameter-request (<SetPlannerParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlannerParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlannerParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlannerParameter-request> is deprecated: use kautham-srv:SetPlannerParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <SetPlannerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:parameter-val is deprecated.  Use kautham-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetPlannerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:value-val is deprecated.  Use kautham-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlannerParameter-request>) ostream)
  "Serializes a message object of type '<SetPlannerParameter-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlannerParameter-request>) istream)
  "Deserializes a message object of type '<SetPlannerParameter-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlannerParameter-request>)))
  "Returns string type for a service object of type '<SetPlannerParameter-request>"
  "kautham/SetPlannerParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerParameter-request)))
  "Returns string type for a service object of type 'SetPlannerParameter-request"
  "kautham/SetPlannerParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlannerParameter-request>)))
  "Returns md5sum for a message object of type '<SetPlannerParameter-request>"
  "db3d47242da6be745fd074d8145bfa61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlannerParameter-request)))
  "Returns md5sum for a message object of type 'SetPlannerParameter-request"
  "db3d47242da6be745fd074d8145bfa61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlannerParameter-request>)))
  "Returns full string definition for message of type '<SetPlannerParameter-request>"
  (cl:format cl:nil "string parameter~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlannerParameter-request)))
  "Returns full string definition for message of type 'SetPlannerParameter-request"
  (cl:format cl:nil "string parameter~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlannerParameter-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'parameter))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlannerParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlannerParameter-request
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetPlannerParameter-response.msg.html

(cl:defclass <SetPlannerParameter-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPlannerParameter-response (<SetPlannerParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlannerParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlannerParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlannerParameter-response> is deprecated: use kautham-srv:SetPlannerParameter-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetPlannerParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlannerParameter-response>) ostream)
  "Serializes a message object of type '<SetPlannerParameter-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlannerParameter-response>) istream)
  "Deserializes a message object of type '<SetPlannerParameter-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlannerParameter-response>)))
  "Returns string type for a service object of type '<SetPlannerParameter-response>"
  "kautham/SetPlannerParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerParameter-response)))
  "Returns string type for a service object of type 'SetPlannerParameter-response"
  "kautham/SetPlannerParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlannerParameter-response>)))
  "Returns md5sum for a message object of type '<SetPlannerParameter-response>"
  "db3d47242da6be745fd074d8145bfa61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlannerParameter-response)))
  "Returns md5sum for a message object of type 'SetPlannerParameter-response"
  "db3d47242da6be745fd074d8145bfa61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlannerParameter-response>)))
  "Returns full string definition for message of type '<SetPlannerParameter-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlannerParameter-response)))
  "Returns full string definition for message of type 'SetPlannerParameter-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlannerParameter-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlannerParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlannerParameter-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPlannerParameter)))
  'SetPlannerParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPlannerParameter)))
  'SetPlannerParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerParameter)))
  "Returns string type for a service object of type '<SetPlannerParameter>"
  "kautham/SetPlannerParameter")