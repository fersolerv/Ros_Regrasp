; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude GetPath-request.msg.html

(cl:defclass <GetPath-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPath-request (<GetPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetPath-request> is deprecated: use kautham-srv:GetPath-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPath-request>) ostream)
  "Serializes a message object of type '<GetPath-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPath-request>) istream)
  "Deserializes a message object of type '<GetPath-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPath-request>)))
  "Returns string type for a service object of type '<GetPath-request>"
  "kautham/GetPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPath-request)))
  "Returns string type for a service object of type 'GetPath-request"
  "kautham/GetPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPath-request>)))
  "Returns md5sum for a message object of type '<GetPath-request>"
  "3eb38c03362ca922ecc4aed737aeab07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPath-request)))
  "Returns md5sum for a message object of type 'GetPath-request"
  "3eb38c03362ca922ecc4aed737aeab07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPath-request>)))
  "Returns full string definition for message of type '<GetPath-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPath-request)))
  "Returns full string definition for message of type 'GetPath-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPath-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPath-request
))
;//! \htmlinclude GetPath-response.msg.html

(cl:defclass <GetPath-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type (cl:vector kautham-msg:fVector)
   :initform (cl:make-array 0 :element-type 'kautham-msg:fVector :initial-element (cl:make-instance 'kautham-msg:fVector))))
)

(cl:defclass GetPath-response (<GetPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<GetPath-response> is deprecated: use kautham-srv:GetPath-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <GetPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPath-response>) ostream)
  "Serializes a message object of type '<GetPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPath-response>) istream)
  "Deserializes a message object of type '<GetPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'response) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'response)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'kautham-msg:fVector))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPath-response>)))
  "Returns string type for a service object of type '<GetPath-response>"
  "kautham/GetPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPath-response)))
  "Returns string type for a service object of type 'GetPath-response"
  "kautham/GetPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPath-response>)))
  "Returns md5sum for a message object of type '<GetPath-response>"
  "3eb38c03362ca922ecc4aed737aeab07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPath-response)))
  "Returns md5sum for a message object of type 'GetPath-response"
  "3eb38c03362ca922ecc4aed737aeab07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPath-response>)))
  "Returns full string definition for message of type '<GetPath-response>"
  (cl:format cl:nil "fVector[] response~%~%~%================================================================================~%MSG: kautham/fVector~%float32[] v~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPath-response)))
  "Returns full string definition for message of type 'GetPath-response"
  (cl:format cl:nil "fVector[] response~%~%~%================================================================================~%MSG: kautham/fVector~%float32[] v~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'response) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPath-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPath)))
  'GetPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPath)))
  'GetPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPath)))
  "Returns string type for a service object of type '<GetPath>"
  "kautham/GetPath")