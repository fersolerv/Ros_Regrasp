; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetObsControlsStream-request.msg.html

(cl:defclass <SetObsControlsStream-request> (roslisp-msg-protocol:ros-message)
  ((controls
    :reader controls
    :initarg :controls
    :type cl:string
    :initform "")
   (initObs
    :reader initObs
    :initarg :initObs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetObsControlsStream-request (<SetObsControlsStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObsControlsStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObsControlsStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetObsControlsStream-request> is deprecated: use kautham-srv:SetObsControlsStream-request instead.")))

(cl:ensure-generic-function 'controls-val :lambda-list '(m))
(cl:defmethod controls-val ((m <SetObsControlsStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:controls-val is deprecated.  Use kautham-srv:controls instead.")
  (controls m))

(cl:ensure-generic-function 'initObs-val :lambda-list '(m))
(cl:defmethod initObs-val ((m <SetObsControlsStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:initObs-val is deprecated.  Use kautham-srv:initObs instead.")
  (initObs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObsControlsStream-request>) ostream)
  "Serializes a message object of type '<SetObsControlsStream-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controls))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObsControlsStream-request>) istream)
  "Deserializes a message object of type '<SetObsControlsStream-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controls) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controls) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObsControlsStream-request>)))
  "Returns string type for a service object of type '<SetObsControlsStream-request>"
  "kautham/SetObsControlsStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObsControlsStream-request)))
  "Returns string type for a service object of type 'SetObsControlsStream-request"
  "kautham/SetObsControlsStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObsControlsStream-request>)))
  "Returns md5sum for a message object of type '<SetObsControlsStream-request>"
  "3e92b278751cc2f940a8c3b100059169")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObsControlsStream-request)))
  "Returns md5sum for a message object of type 'SetObsControlsStream-request"
  "3e92b278751cc2f940a8c3b100059169")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObsControlsStream-request>)))
  "Returns full string definition for message of type '<SetObsControlsStream-request>"
  (cl:format cl:nil "string controls~%float32[] initObs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObsControlsStream-request)))
  "Returns full string definition for message of type 'SetObsControlsStream-request"
  (cl:format cl:nil "string controls~%float32[] initObs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObsControlsStream-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'controls))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'initObs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObsControlsStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObsControlsStream-request
    (cl:cons ':controls (controls msg))
    (cl:cons ':initObs (initObs msg))
))
;//! \htmlinclude SetObsControlsStream-response.msg.html

(cl:defclass <SetObsControlsStream-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetObsControlsStream-response (<SetObsControlsStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObsControlsStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObsControlsStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetObsControlsStream-response> is deprecated: use kautham-srv:SetObsControlsStream-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetObsControlsStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObsControlsStream-response>) ostream)
  "Serializes a message object of type '<SetObsControlsStream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObsControlsStream-response>) istream)
  "Deserializes a message object of type '<SetObsControlsStream-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObsControlsStream-response>)))
  "Returns string type for a service object of type '<SetObsControlsStream-response>"
  "kautham/SetObsControlsStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObsControlsStream-response)))
  "Returns string type for a service object of type 'SetObsControlsStream-response"
  "kautham/SetObsControlsStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObsControlsStream-response>)))
  "Returns md5sum for a message object of type '<SetObsControlsStream-response>"
  "3e92b278751cc2f940a8c3b100059169")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObsControlsStream-response)))
  "Returns md5sum for a message object of type 'SetObsControlsStream-response"
  "3e92b278751cc2f940a8c3b100059169")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObsControlsStream-response>)))
  "Returns full string definition for message of type '<SetObsControlsStream-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObsControlsStream-response)))
  "Returns full string definition for message of type 'SetObsControlsStream-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObsControlsStream-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObsControlsStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObsControlsStream-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObsControlsStream)))
  'SetObsControlsStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObsControlsStream)))
  'SetObsControlsStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObsControlsStream)))
  "Returns string type for a service object of type '<SetObsControlsStream>"
  "kautham/SetObsControlsStream")