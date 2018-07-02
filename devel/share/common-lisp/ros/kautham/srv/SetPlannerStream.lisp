; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetPlannerStream-request.msg.html

(cl:defclass <SetPlannerStream-request> (roslisp-msg-protocol:ros-message)
  ((planner
    :reader planner
    :initarg :planner
    :type cl:string
    :initform ""))
)

(cl:defclass SetPlannerStream-request (<SetPlannerStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlannerStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlannerStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlannerStream-request> is deprecated: use kautham-srv:SetPlannerStream-request instead.")))

(cl:ensure-generic-function 'planner-val :lambda-list '(m))
(cl:defmethod planner-val ((m <SetPlannerStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:planner-val is deprecated.  Use kautham-srv:planner instead.")
  (planner m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlannerStream-request>) ostream)
  "Serializes a message object of type '<SetPlannerStream-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlannerStream-request>) istream)
  "Deserializes a message object of type '<SetPlannerStream-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlannerStream-request>)))
  "Returns string type for a service object of type '<SetPlannerStream-request>"
  "kautham/SetPlannerStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerStream-request)))
  "Returns string type for a service object of type 'SetPlannerStream-request"
  "kautham/SetPlannerStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlannerStream-request>)))
  "Returns md5sum for a message object of type '<SetPlannerStream-request>"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlannerStream-request)))
  "Returns md5sum for a message object of type 'SetPlannerStream-request"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlannerStream-request>)))
  "Returns full string definition for message of type '<SetPlannerStream-request>"
  (cl:format cl:nil "string planner~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlannerStream-request)))
  "Returns full string definition for message of type 'SetPlannerStream-request"
  (cl:format cl:nil "string planner~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlannerStream-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planner))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlannerStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlannerStream-request
    (cl:cons ':planner (planner msg))
))
;//! \htmlinclude SetPlannerStream-response.msg.html

(cl:defclass <SetPlannerStream-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPlannerStream-response (<SetPlannerStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPlannerStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPlannerStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetPlannerStream-response> is deprecated: use kautham-srv:SetPlannerStream-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetPlannerStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPlannerStream-response>) ostream)
  "Serializes a message object of type '<SetPlannerStream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPlannerStream-response>) istream)
  "Deserializes a message object of type '<SetPlannerStream-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPlannerStream-response>)))
  "Returns string type for a service object of type '<SetPlannerStream-response>"
  "kautham/SetPlannerStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerStream-response)))
  "Returns string type for a service object of type 'SetPlannerStream-response"
  "kautham/SetPlannerStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPlannerStream-response>)))
  "Returns md5sum for a message object of type '<SetPlannerStream-response>"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPlannerStream-response)))
  "Returns md5sum for a message object of type 'SetPlannerStream-response"
  "27e250d0b4007fed97ea34778d6d7442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPlannerStream-response>)))
  "Returns full string definition for message of type '<SetPlannerStream-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPlannerStream-response)))
  "Returns full string definition for message of type 'SetPlannerStream-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPlannerStream-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPlannerStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPlannerStream-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPlannerStream)))
  'SetPlannerStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPlannerStream)))
  'SetPlannerStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPlannerStream)))
  "Returns string type for a service object of type '<SetPlannerStream>"
  "kautham/SetPlannerStream")