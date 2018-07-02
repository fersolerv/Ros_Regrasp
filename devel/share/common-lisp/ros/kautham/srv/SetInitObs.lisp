; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetInitObs-request.msg.html

(cl:defclass <SetInitObs-request> (roslisp-msg-protocol:ros-message)
  ((initObs
    :reader initObs
    :initarg :initObs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetInitObs-request (<SetInitObs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitObs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitObs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetInitObs-request> is deprecated: use kautham-srv:SetInitObs-request instead.")))

(cl:ensure-generic-function 'initObs-val :lambda-list '(m))
(cl:defmethod initObs-val ((m <SetInitObs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:initObs-val is deprecated.  Use kautham-srv:initObs instead.")
  (initObs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitObs-request>) ostream)
  "Serializes a message object of type '<SetInitObs-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'initObs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'initObs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitObs-request>) istream)
  "Deserializes a message object of type '<SetInitObs-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'initObs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'initObs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitObs-request>)))
  "Returns string type for a service object of type '<SetInitObs-request>"
  "kautham/SetInitObsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitObs-request)))
  "Returns string type for a service object of type 'SetInitObs-request"
  "kautham/SetInitObsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitObs-request>)))
  "Returns md5sum for a message object of type '<SetInitObs-request>"
  "568a1ace662857bb749c086519c0e1ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitObs-request)))
  "Returns md5sum for a message object of type 'SetInitObs-request"
  "568a1ace662857bb749c086519c0e1ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitObs-request>)))
  "Returns full string definition for message of type '<SetInitObs-request>"
  (cl:format cl:nil "float32[] initObs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitObs-request)))
  "Returns full string definition for message of type 'SetInitObs-request"
  (cl:format cl:nil "float32[] initObs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitObs-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'initObs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitObs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitObs-request
    (cl:cons ':initObs (initObs msg))
))
;//! \htmlinclude SetInitObs-response.msg.html

(cl:defclass <SetInitObs-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetInitObs-response (<SetInitObs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInitObs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInitObs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetInitObs-response> is deprecated: use kautham-srv:SetInitObs-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetInitObs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInitObs-response>) ostream)
  "Serializes a message object of type '<SetInitObs-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInitObs-response>) istream)
  "Deserializes a message object of type '<SetInitObs-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInitObs-response>)))
  "Returns string type for a service object of type '<SetInitObs-response>"
  "kautham/SetInitObsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitObs-response)))
  "Returns string type for a service object of type 'SetInitObs-response"
  "kautham/SetInitObsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInitObs-response>)))
  "Returns md5sum for a message object of type '<SetInitObs-response>"
  "568a1ace662857bb749c086519c0e1ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInitObs-response)))
  "Returns md5sum for a message object of type 'SetInitObs-response"
  "568a1ace662857bb749c086519c0e1ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInitObs-response>)))
  "Returns full string definition for message of type '<SetInitObs-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInitObs-response)))
  "Returns full string definition for message of type 'SetInitObs-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInitObs-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInitObs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInitObs-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInitObs)))
  'SetInitObs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInitObs)))
  'SetInitObs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInitObs)))
  "Returns string type for a service object of type '<SetInitObs>"
  "kautham/SetInitObs")