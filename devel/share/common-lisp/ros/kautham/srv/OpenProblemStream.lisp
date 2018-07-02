; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude OpenProblemStream-request.msg.html

(cl:defclass <OpenProblemStream-request> (roslisp-msg-protocol:ros-message)
  ((problem
    :reader problem
    :initarg :problem
    :type cl:string
    :initform ""))
)

(cl:defclass OpenProblemStream-request (<OpenProblemStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenProblemStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenProblemStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<OpenProblemStream-request> is deprecated: use kautham-srv:OpenProblemStream-request instead.")))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <OpenProblemStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:problem-val is deprecated.  Use kautham-srv:problem instead.")
  (problem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenProblemStream-request>) ostream)
  "Serializes a message object of type '<OpenProblemStream-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'problem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'problem))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenProblemStream-request>) istream)
  "Deserializes a message object of type '<OpenProblemStream-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'problem) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'problem) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenProblemStream-request>)))
  "Returns string type for a service object of type '<OpenProblemStream-request>"
  "kautham/OpenProblemStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenProblemStream-request)))
  "Returns string type for a service object of type 'OpenProblemStream-request"
  "kautham/OpenProblemStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenProblemStream-request>)))
  "Returns md5sum for a message object of type '<OpenProblemStream-request>"
  "f1b18219c49a144f09b5eeb68c6dc119")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenProblemStream-request)))
  "Returns md5sum for a message object of type 'OpenProblemStream-request"
  "f1b18219c49a144f09b5eeb68c6dc119")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenProblemStream-request>)))
  "Returns full string definition for message of type '<OpenProblemStream-request>"
  (cl:format cl:nil "string problem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenProblemStream-request)))
  "Returns full string definition for message of type 'OpenProblemStream-request"
  (cl:format cl:nil "string problem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenProblemStream-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'problem))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenProblemStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenProblemStream-request
    (cl:cons ':problem (problem msg))
))
;//! \htmlinclude OpenProblemStream-response.msg.html

(cl:defclass <OpenProblemStream-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OpenProblemStream-response (<OpenProblemStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenProblemStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenProblemStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<OpenProblemStream-response> is deprecated: use kautham-srv:OpenProblemStream-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <OpenProblemStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenProblemStream-response>) ostream)
  "Serializes a message object of type '<OpenProblemStream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenProblemStream-response>) istream)
  "Deserializes a message object of type '<OpenProblemStream-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenProblemStream-response>)))
  "Returns string type for a service object of type '<OpenProblemStream-response>"
  "kautham/OpenProblemStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenProblemStream-response)))
  "Returns string type for a service object of type 'OpenProblemStream-response"
  "kautham/OpenProblemStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenProblemStream-response>)))
  "Returns md5sum for a message object of type '<OpenProblemStream-response>"
  "f1b18219c49a144f09b5eeb68c6dc119")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenProblemStream-response)))
  "Returns md5sum for a message object of type 'OpenProblemStream-response"
  "f1b18219c49a144f09b5eeb68c6dc119")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenProblemStream-response>)))
  "Returns full string definition for message of type '<OpenProblemStream-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenProblemStream-response)))
  "Returns full string definition for message of type 'OpenProblemStream-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenProblemStream-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenProblemStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenProblemStream-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenProblemStream)))
  'OpenProblemStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenProblemStream)))
  'OpenProblemStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenProblemStream)))
  "Returns string type for a service object of type '<OpenProblemStream>"
  "kautham/OpenProblemStream")