; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude ProblemSetup-request.msg.html

(cl:defclass <ProblemSetup-request> (roslisp-msg-protocol:ros-message)
  ((problem
    :reader problem
    :initarg :problem
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (hand
    :reader hand
    :initarg :hand
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ProblemSetup-request (<ProblemSetup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProblemSetup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProblemSetup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ProblemSetup-request> is deprecated: use kautham-srv:ProblemSetup-request instead.")))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <ProblemSetup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:problem-val is deprecated.  Use kautham-srv:problem instead.")
  (problem m))

(cl:ensure-generic-function 'hand-val :lambda-list '(m))
(cl:defmethod hand-val ((m <ProblemSetup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:hand-val is deprecated.  Use kautham-srv:hand instead.")
  (hand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProblemSetup-request>) ostream)
  "Serializes a message object of type '<ProblemSetup-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'problem) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProblemSetup-request>) istream)
  "Deserializes a message object of type '<ProblemSetup-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'problem) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProblemSetup-request>)))
  "Returns string type for a service object of type '<ProblemSetup-request>"
  "kautham/ProblemSetupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProblemSetup-request)))
  "Returns string type for a service object of type 'ProblemSetup-request"
  "kautham/ProblemSetupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProblemSetup-request>)))
  "Returns md5sum for a message object of type '<ProblemSetup-request>"
  "810e7beeef30996cdcb71b8bb9e75a49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProblemSetup-request)))
  "Returns md5sum for a message object of type 'ProblemSetup-request"
  "810e7beeef30996cdcb71b8bb9e75a49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProblemSetup-request>)))
  "Returns full string definition for message of type '<ProblemSetup-request>"
  (cl:format cl:nil "std_msgs/String problem~%uint8 hand~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProblemSetup-request)))
  "Returns full string definition for message of type 'ProblemSetup-request"
  (cl:format cl:nil "std_msgs/String problem~%uint8 hand~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProblemSetup-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'problem))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProblemSetup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProblemSetup-request
    (cl:cons ':problem (problem msg))
    (cl:cons ':hand (hand msg))
))
;//! \htmlinclude ProblemSetup-response.msg.html

(cl:defclass <ProblemSetup-response> (roslisp-msg-protocol:ros-message)
  ((dim
    :reader dim
    :initarg :dim
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ProblemSetup-response (<ProblemSetup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProblemSetup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProblemSetup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ProblemSetup-response> is deprecated: use kautham-srv:ProblemSetup-response instead.")))

(cl:ensure-generic-function 'dim-val :lambda-list '(m))
(cl:defmethod dim-val ((m <ProblemSetup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:dim-val is deprecated.  Use kautham-srv:dim instead.")
  (dim m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ProblemSetup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProblemSetup-response>) ostream)
  "Serializes a message object of type '<ProblemSetup-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dim)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProblemSetup-response>) istream)
  "Deserializes a message object of type '<ProblemSetup-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dim)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProblemSetup-response>)))
  "Returns string type for a service object of type '<ProblemSetup-response>"
  "kautham/ProblemSetupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProblemSetup-response)))
  "Returns string type for a service object of type 'ProblemSetup-response"
  "kautham/ProblemSetupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProblemSetup-response>)))
  "Returns md5sum for a message object of type '<ProblemSetup-response>"
  "810e7beeef30996cdcb71b8bb9e75a49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProblemSetup-response)))
  "Returns md5sum for a message object of type 'ProblemSetup-response"
  "810e7beeef30996cdcb71b8bb9e75a49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProblemSetup-response>)))
  "Returns full string definition for message of type '<ProblemSetup-response>"
  (cl:format cl:nil "uint8 dim~%bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProblemSetup-response)))
  "Returns full string definition for message of type 'ProblemSetup-response"
  (cl:format cl:nil "uint8 dim~%bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProblemSetup-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProblemSetup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProblemSetup-response
    (cl:cons ':dim (dim msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProblemSetup)))
  'ProblemSetup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProblemSetup)))
  'ProblemSetup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProblemSetup)))
  "Returns string type for a service object of type '<ProblemSetup>"
  "kautham/ProblemSetup")