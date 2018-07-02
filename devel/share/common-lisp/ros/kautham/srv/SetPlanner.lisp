; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetPlanner-request.msg.html

(cl:defclass <SetPlanner-request> (roslisp-msg-protocol:ros-message)
  ((planner
    :reader planner
    :initarg :planner
    :type cl:string
    :initform ""))
)

(cl:defclass SetPlanner-request (<SetPlanner-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlanner-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlanner-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlanner-request> is deprecated: use kautham-srv:SetPlanner-request instead.")))

(cl:ensure-generic-function 'planner-val :lambda-list '(m))
(cl:defmethod planner-val ((m <SetPlanner-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:planner-val is deprecated.  Use kautham-srv:planner instead.")
  (planner m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlanner-request>) ostream)
  "Serializes a message object of type '<SetPlanner-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlanner-request>) istream)
  "Deserializes a message object of type '<SetPlanner-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planner) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlanner-request>)))
  "Returns string type for a service object of type '<SetPlanner-request>"
  "kautham/SetPlannerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlanner-request)))
  "Returns string type for a service object of type 'SetPlanner-request"
  "kautham/SetPlannerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlanner-request>)))
  "Returns md5sum for a message object of type '<SetPlanner-request>"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlanner-request)))
  "Returns md5sum for a message object of type 'SetPlanner-request"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlanner-request>)))
  "Returns full string definition for message of type '<SetPlanner-request>"
  (cl:format cl:nil "string planner~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlanner-request)))
  "Returns full string definition for message of type 'SetPlanner-request"
  (cl:format cl:nil "string planner~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlanner-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planner))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlanner-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlanner-request
    (cl:cons ':planner (planner msg))
))
;//! \htmlinclude SetPlanner-response.msg.html

(cl:defclass <SetPlanner-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPlanner-response (<SetPlanner-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlanner-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlanner-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlanner-response> is deprecated: use kautham-srv:SetPlanner-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetPlanner-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlanner-response>) ostream)
  "Serializes a message object of type '<SetPlanner-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlanner-response>) istream)
  "Deserializes a message object of type '<SetPlanner-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlanner-response>)))
  "Returns string type for a service object of type '<SetPlanner-response>"
  "kautham/SetPlannerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlanner-response)))
  "Returns string type for a service object of type 'SetPlanner-response"
  "kautham/SetPlannerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlanner-response>)))
  "Returns md5sum for a message object of type '<SetPlanner-response>"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlanner-response)))
  "Returns md5sum for a message object of type 'SetPlanner-response"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlanner-response>)))
  "Returns full string definition for message of type '<SetPlanner-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlanner-response)))
  "Returns full string definition for message of type 'SetPlanner-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlanner-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlanner-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlanner-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPlanner)))
  'SetPlanner-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPlanner)))
  'SetPlanner-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlanner)))
  "Returns string type for a service object of type '<SetPlanner>"
  "kautham/SetPlanner")