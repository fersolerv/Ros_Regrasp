; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude OpenProblem-request.msg.html

(cl:defclass <OpenProblem-request> (roslisp-msg-protocol:ros-message)
  ((problem
    :reader problem
    :initarg :problem
    :type cl:string
    :initform "")
   (dir
    :reader dir
    :initarg :dir
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass OpenProblem-request (<OpenProblem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenProblem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenProblem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<OpenProblem-request> is deprecated: use kautham-srv:OpenProblem-request instead.")))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <OpenProblem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:problem-val is deprecated.  Use kautham-srv:problem instead.")
  (problem m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <OpenProblem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:dir-val is deprecated.  Use kautham-srv:dir instead.")
  (dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenProblem-request>) ostream)
  "Serializes a message object of type '<OpenProblem-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'problem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'problem))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'dir))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenProblem-request>) istream)
  "Deserializes a message object of type '<OpenProblem-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'problem) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'problem) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dir) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dir)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenProblem-request>)))
  "Returns string type for a service object of type '<OpenProblem-request>"
  "kautham/OpenProblemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenProblem-request)))
  "Returns string type for a service object of type 'OpenProblem-request"
  "kautham/OpenProblemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenProblem-request>)))
  "Returns md5sum for a message object of type '<OpenProblem-request>"
  "c60ad7e88ffb07d87f2d90fab0a96706")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenProblem-request)))
  "Returns md5sum for a message object of type 'OpenProblem-request"
  "c60ad7e88ffb07d87f2d90fab0a96706")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenProblem-request>)))
  "Returns full string definition for message of type '<OpenProblem-request>"
  (cl:format cl:nil "string problem~%string[] dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenProblem-request)))
  "Returns full string definition for message of type 'OpenProblem-request"
  (cl:format cl:nil "string problem~%string[] dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenProblem-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'problem))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dir) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenProblem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenProblem-request
    (cl:cons ':problem (problem msg))
    (cl:cons ':dir (dir msg))
))
;//! \htmlinclude OpenProblem-response.msg.html

(cl:defclass <OpenProblem-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OpenProblem-response (<OpenProblem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenProblem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenProblem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<OpenProblem-response> is deprecated: use kautham-srv:OpenProblem-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <OpenProblem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenProblem-response>) ostream)
  "Serializes a message object of type '<OpenProblem-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenProblem-response>) istream)
  "Deserializes a message object of type '<OpenProblem-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenProblem-response>)))
  "Returns string type for a service object of type '<OpenProblem-response>"
  "kautham/OpenProblemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenProblem-response)))
  "Returns string type for a service object of type 'OpenProblem-response"
  "kautham/OpenProblemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenProblem-response>)))
  "Returns md5sum for a message object of type '<OpenProblem-response>"
  "c60ad7e88ffb07d87f2d90fab0a96706")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenProblem-response)))
  "Returns md5sum for a message object of type 'OpenProblem-response"
  "c60ad7e88ffb07d87f2d90fab0a96706")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenProblem-response>)))
  "Returns full string definition for message of type '<OpenProblem-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenProblem-response)))
  "Returns full string definition for message of type 'OpenProblem-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenProblem-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenProblem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenProblem-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenProblem)))
  'OpenProblem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenProblem)))
  'OpenProblem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenProblem)))
  "Returns string type for a service object of type '<OpenProblem>"
  "kautham/OpenProblem")