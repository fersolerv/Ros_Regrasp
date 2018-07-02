; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SaveData-request.msg.html

(cl:defclass <SaveData-request> (roslisp-msg-protocol:ros-message)
  ((problem
    :reader problem
    :initarg :problem
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass SaveData-request (<SaveData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SaveData-request> is deprecated: use kautham-srv:SaveData-request instead.")))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <SaveData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:problem-val is deprecated.  Use kautham-srv:problem instead.")
  (problem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveData-request>) ostream)
  "Serializes a message object of type '<SaveData-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'problem) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveData-request>) istream)
  "Deserializes a message object of type '<SaveData-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'problem) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveData-request>)))
  "Returns string type for a service object of type '<SaveData-request>"
  "kautham/SaveDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveData-request)))
  "Returns string type for a service object of type 'SaveData-request"
  "kautham/SaveDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveData-request>)))
  "Returns md5sum for a message object of type '<SaveData-request>"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveData-request)))
  "Returns md5sum for a message object of type 'SaveData-request"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveData-request>)))
  "Returns full string definition for message of type '<SaveData-request>"
  (cl:format cl:nil "std_msgs/String problem~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveData-request)))
  "Returns full string definition for message of type 'SaveData-request"
  (cl:format cl:nil "std_msgs/String problem~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveData-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'problem))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveData-request
    (cl:cons ':problem (problem msg))
))
;//! \htmlinclude SaveData-response.msg.html

(cl:defclass <SaveData-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveData-response (<SaveData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SaveData-response> is deprecated: use kautham-srv:SaveData-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SaveData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveData-response>) ostream)
  "Serializes a message object of type '<SaveData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveData-response>) istream)
  "Deserializes a message object of type '<SaveData-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveData-response>)))
  "Returns string type for a service object of type '<SaveData-response>"
  "kautham/SaveDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveData-response)))
  "Returns string type for a service object of type 'SaveData-response"
  "kautham/SaveDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveData-response>)))
  "Returns md5sum for a message object of type '<SaveData-response>"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveData-response)))
  "Returns md5sum for a message object of type 'SaveData-response"
  "90f671570a831ac11355c7d009fb2e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveData-response>)))
  "Returns full string definition for message of type '<SaveData-response>"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveData-response)))
  "Returns full string definition for message of type 'SaveData-response"
  (cl:format cl:nil "bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveData-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveData)))
  'SaveData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveData)))
  'SaveData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveData)))
  "Returns string type for a service object of type '<SaveData>"
  "kautham/SaveData")