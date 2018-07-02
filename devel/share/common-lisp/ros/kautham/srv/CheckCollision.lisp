; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude CheckCollision-request.msg.html

(cl:defclass <CheckCollision-request> (roslisp-msg-protocol:ros-message)
  ((config
    :reader config
    :initarg :config
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CheckCollision-request (<CheckCollision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<CheckCollision-request> is deprecated: use kautham-srv:CheckCollision-request instead.")))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <CheckCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:config-val is deprecated.  Use kautham-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-request>) ostream)
  "Serializes a message object of type '<CheckCollision-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-request>) istream)
  "Deserializes a message object of type '<CheckCollision-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-request>)))
  "Returns string type for a service object of type '<CheckCollision-request>"
  "kautham/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-request)))
  "Returns string type for a service object of type 'CheckCollision-request"
  "kautham/CheckCollisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-request>)))
  "Returns md5sum for a message object of type '<CheckCollision-request>"
  "5bd45a4c0c9f595397452675d6ed83a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-request)))
  "Returns md5sum for a message object of type 'CheckCollision-request"
  "5bd45a4c0c9f595397452675d6ed83a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-request>)))
  "Returns full string definition for message of type '<CheckCollision-request>"
  (cl:format cl:nil "float32[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-request)))
  "Returns full string definition for message of type 'CheckCollision-request"
  (cl:format cl:nil "float32[] config~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'config) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-request
    (cl:cons ':config (config msg))
))
;//! \htmlinclude CheckCollision-response.msg.html

(cl:defclass <CheckCollision-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil)
   (collisionFree
    :reader collisionFree
    :initarg :collisionFree
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckCollision-response (<CheckCollision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckCollision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckCollision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<CheckCollision-response> is deprecated: use kautham-srv:CheckCollision-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <CheckCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))

(cl:ensure-generic-function 'collisionFree-val :lambda-list '(m))
(cl:defmethod collisionFree-val ((m <CheckCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:collisionFree-val is deprecated.  Use kautham-srv:collisionFree instead.")
  (collisionFree m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckCollision-response>) ostream)
  "Serializes a message object of type '<CheckCollision-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collisionFree) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckCollision-response>) istream)
  "Deserializes a message object of type '<CheckCollision-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'collisionFree) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckCollision-response>)))
  "Returns string type for a service object of type '<CheckCollision-response>"
  "kautham/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision-response)))
  "Returns string type for a service object of type 'CheckCollision-response"
  "kautham/CheckCollisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckCollision-response>)))
  "Returns md5sum for a message object of type '<CheckCollision-response>"
  "5bd45a4c0c9f595397452675d6ed83a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckCollision-response)))
  "Returns md5sum for a message object of type 'CheckCollision-response"
  "5bd45a4c0c9f595397452675d6ed83a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckCollision-response>)))
  "Returns full string definition for message of type '<CheckCollision-response>"
  (cl:format cl:nil "bool response~%bool collisionFree~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckCollision-response)))
  "Returns full string definition for message of type 'CheckCollision-response"
  (cl:format cl:nil "bool response~%bool collisionFree~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckCollision-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckCollision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckCollision-response
    (cl:cons ':response (response msg))
    (cl:cons ':collisionFree (collisionFree msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckCollision)))
  'CheckCollision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckCollision)))
  "Returns string type for a service object of type '<CheckCollision>"
  "kautham/CheckCollision")