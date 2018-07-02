; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude AddObstacle-request.msg.html

(cl:defclass <AddObstacle-request> (roslisp-msg-protocol:ros-message)
  ((obstacle
    :reader obstacle
    :initarg :obstacle
    :type cl:string
    :initform "")
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0)
   (home
    :reader home
    :initarg :home
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AddObstacle-request (<AddObstacle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddObstacle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddObstacle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AddObstacle-request> is deprecated: use kautham-srv:AddObstacle-request instead.")))

(cl:ensure-generic-function 'obstacle-val :lambda-list '(m))
(cl:defmethod obstacle-val ((m <AddObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:obstacle-val is deprecated.  Use kautham-srv:obstacle instead.")
  (obstacle m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <AddObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:scale-val is deprecated.  Use kautham-srv:scale instead.")
  (scale m))

(cl:ensure-generic-function 'home-val :lambda-list '(m))
(cl:defmethod home-val ((m <AddObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:home-val is deprecated.  Use kautham-srv:home instead.")
  (home m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddObstacle-request>) ostream)
  "Serializes a message object of type '<AddObstacle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obstacle))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'home))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'home))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddObstacle-request>) istream)
  "Deserializes a message object of type '<AddObstacle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacle) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obstacle) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'home) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'home)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddObstacle-request>)))
  "Returns string type for a service object of type '<AddObstacle-request>"
  "kautham/AddObstacleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddObstacle-request)))
  "Returns string type for a service object of type 'AddObstacle-request"
  "kautham/AddObstacleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddObstacle-request>)))
  "Returns md5sum for a message object of type '<AddObstacle-request>"
  "6e94336c766275ae91a3b87950535ae7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddObstacle-request)))
  "Returns md5sum for a message object of type 'AddObstacle-request"
  "6e94336c766275ae91a3b87950535ae7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddObstacle-request>)))
  "Returns full string definition for message of type '<AddObstacle-request>"
  (cl:format cl:nil "string obstacle~%float32 scale~%float32[] home~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddObstacle-request)))
  "Returns full string definition for message of type 'AddObstacle-request"
  (cl:format cl:nil "string obstacle~%float32 scale~%float32[] home~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddObstacle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'obstacle))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'home) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddObstacle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddObstacle-request
    (cl:cons ':obstacle (obstacle msg))
    (cl:cons ':scale (scale msg))
    (cl:cons ':home (home msg))
))
;//! \htmlinclude AddObstacle-response.msg.html

(cl:defclass <AddObstacle-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:integer
    :initform 0))
)

(cl:defclass AddObstacle-response (<AddObstacle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddObstacle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddObstacle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<AddObstacle-response> is deprecated: use kautham-srv:AddObstacle-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <AddObstacle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddObstacle-response>) ostream)
  "Serializes a message object of type '<AddObstacle-response>"
  (cl:let* ((signed (cl:slot-value msg 'response)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddObstacle-response>) istream)
  "Deserializes a message object of type '<AddObstacle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddObstacle-response>)))
  "Returns string type for a service object of type '<AddObstacle-response>"
  "kautham/AddObstacleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddObstacle-response)))
  "Returns string type for a service object of type 'AddObstacle-response"
  "kautham/AddObstacleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddObstacle-response>)))
  "Returns md5sum for a message object of type '<AddObstacle-response>"
  "6e94336c766275ae91a3b87950535ae7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddObstacle-response)))
  "Returns md5sum for a message object of type 'AddObstacle-response"
  "6e94336c766275ae91a3b87950535ae7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddObstacle-response>)))
  "Returns full string definition for message of type '<AddObstacle-response>"
  (cl:format cl:nil "int64 response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddObstacle-response)))
  "Returns full string definition for message of type 'AddObstacle-response"
  (cl:format cl:nil "int64 response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddObstacle-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddObstacle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddObstacle-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddObstacle)))
  'AddObstacle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddObstacle)))
  'AddObstacle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddObstacle)))
  "Returns string type for a service object of type '<AddObstacle>"
  "kautham/AddObstacle")