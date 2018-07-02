; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude LoadData-request.msg.html

(cl:defclass <LoadData-request> (roslisp-msg-protocol:ros-message)
  ((problem
    :reader problem
    :initarg :problem
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass LoadData-request (<LoadData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<LoadData-request> is deprecated: use kautham-srv:LoadData-request instead.")))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <LoadData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:problem-val is deprecated.  Use kautham-srv:problem instead.")
  (problem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadData-request>) ostream)
  "Serializes a message object of type '<LoadData-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'problem) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadData-request>) istream)
  "Deserializes a message object of type '<LoadData-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'problem) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadData-request>)))
  "Returns string type for a service object of type '<LoadData-request>"
  "kautham/LoadDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadData-request)))
  "Returns string type for a service object of type 'LoadData-request"
  "kautham/LoadDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadData-request>)))
  "Returns md5sum for a message object of type '<LoadData-request>"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadData-request)))
  "Returns md5sum for a message object of type 'LoadData-request"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadData-request>)))
  "Returns full string definition for message of type '<LoadData-request>"
  (cl:format cl:nil "std_msgs/String problem~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadData-request)))
  "Returns full string definition for message of type 'LoadData-request"
  (cl:format cl:nil "std_msgs/String problem~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadData-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'problem))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadData-request
    (cl:cons ':problem (problem msg))
))
;//! \htmlinclude LoadData-response.msg.html

(cl:defclass <LoadData-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadData-response (<LoadData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<LoadData-response> is deprecated: use kautham-srv:LoadData-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LoadData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadData-response>) ostream)
  "Serializes a message object of type '<LoadData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadData-response>) istream)
  "Deserializes a message object of type '<LoadData-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadData-response>)))
  "Returns string type for a service object of type '<LoadData-response>"
  "kautham/LoadDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadData-response)))
  "Returns string type for a service object of type 'LoadData-response"
  "kautham/LoadDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadData-response>)))
  "Returns md5sum for a message object of type '<LoadData-response>"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadData-response)))
  "Returns md5sum for a message object of type 'LoadData-response"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadData-response>)))
  "Returns full string definition for message of type '<LoadData-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadData-response)))
  "Returns full string definition for message of type 'LoadData-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadData-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadData)))
  'LoadData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadData)))
  'LoadData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadData)))
  "Returns string type for a service object of type '<LoadData>"
  "kautham/LoadData")