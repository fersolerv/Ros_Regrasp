; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetPlannerByName-request.msg.html

(cl:defclass <SetPlannerByName-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SetPlannerByName-request (<SetPlannerByName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlannerByName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlannerByName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlannerByName-request> is deprecated: use kautham-srv:SetPlannerByName-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetPlannerByName-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:name-val is deprecated.  Use kautham-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlannerByName-request>) ostream)
  "Serializes a message object of type '<SetPlannerByName-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlannerByName-request>) istream)
  "Deserializes a message object of type '<SetPlannerByName-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlannerByName-request>)))
  "Returns string type for a service object of type '<SetPlannerByName-request>"
  "kautham/SetPlannerByNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerByName-request)))
  "Returns string type for a service object of type 'SetPlannerByName-request"
  "kautham/SetPlannerByNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlannerByName-request>)))
  "Returns md5sum for a message object of type '<SetPlannerByName-request>"
  "86e89ae99d78051f082ee98c1cba0707")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlannerByName-request)))
  "Returns md5sum for a message object of type 'SetPlannerByName-request"
  "86e89ae99d78051f082ee98c1cba0707")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlannerByName-request>)))
  "Returns full string definition for message of type '<SetPlannerByName-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlannerByName-request)))
  "Returns full string definition for message of type 'SetPlannerByName-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlannerByName-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlannerByName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlannerByName-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude SetPlannerByName-response.msg.html

(cl:defclass <SetPlannerByName-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPlannerByName-response (<SetPlannerByName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlannerByName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlannerByName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlannerByName-response> is deprecated: use kautham-srv:SetPlannerByName-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetPlannerByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlannerByName-response>) ostream)
  "Serializes a message object of type '<SetPlannerByName-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlannerByName-response>) istream)
  "Deserializes a message object of type '<SetPlannerByName-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlannerByName-response>)))
  "Returns string type for a service object of type '<SetPlannerByName-response>"
  "kautham/SetPlannerByNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerByName-response)))
  "Returns string type for a service object of type 'SetPlannerByName-response"
  "kautham/SetPlannerByNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlannerByName-response>)))
  "Returns md5sum for a message object of type '<SetPlannerByName-response>"
  "86e89ae99d78051f082ee98c1cba0707")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlannerByName-response)))
  "Returns md5sum for a message object of type 'SetPlannerByName-response"
  "86e89ae99d78051f082ee98c1cba0707")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlannerByName-response>)))
  "Returns full string definition for message of type '<SetPlannerByName-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlannerByName-response)))
  "Returns full string definition for message of type 'SetPlannerByName-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlannerByName-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlannerByName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlannerByName-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPlannerByName)))
  'SetPlannerByName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPlannerByName)))
  'SetPlannerByName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerByName)))
  "Returns string type for a service object of type '<SetPlannerByName>"
  "kautham/SetPlannerByName")