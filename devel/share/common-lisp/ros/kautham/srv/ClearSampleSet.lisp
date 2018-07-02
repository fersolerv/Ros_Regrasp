; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude ClearSampleSet-request.msg.html

(cl:defclass <ClearSampleSet-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClearSampleSet-request (<ClearSampleSet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearSampleSet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearSampleSet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ClearSampleSet-request> is deprecated: use kautham-srv:ClearSampleSet-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearSampleSet-request>) ostream)
  "Serializes a message object of type '<ClearSampleSet-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearSampleSet-request>) istream)
  "Deserializes a message object of type '<ClearSampleSet-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearSampleSet-request>)))
  "Returns string type for a service object of type '<ClearSampleSet-request>"
  "kautham/ClearSampleSetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearSampleSet-request)))
  "Returns string type for a service object of type 'ClearSampleSet-request"
  "kautham/ClearSampleSetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearSampleSet-request>)))
  "Returns md5sum for a message object of type '<ClearSampleSet-request>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearSampleSet-request)))
  "Returns md5sum for a message object of type 'ClearSampleSet-request"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearSampleSet-request>)))
  "Returns full string definition for message of type '<ClearSampleSet-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearSampleSet-request)))
  "Returns full string definition for message of type 'ClearSampleSet-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearSampleSet-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearSampleSet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearSampleSet-request
))
;//! \htmlinclude ClearSampleSet-response.msg.html

(cl:defclass <ClearSampleSet-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearSampleSet-response (<ClearSampleSet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearSampleSet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearSampleSet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ClearSampleSet-response> is deprecated: use kautham-srv:ClearSampleSet-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <ClearSampleSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearSampleSet-response>) ostream)
  "Serializes a message object of type '<ClearSampleSet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearSampleSet-response>) istream)
  "Deserializes a message object of type '<ClearSampleSet-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearSampleSet-response>)))
  "Returns string type for a service object of type '<ClearSampleSet-response>"
  "kautham/ClearSampleSetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearSampleSet-response)))
  "Returns string type for a service object of type 'ClearSampleSet-response"
  "kautham/ClearSampleSetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearSampleSet-response>)))
  "Returns md5sum for a message object of type '<ClearSampleSet-response>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearSampleSet-response)))
  "Returns md5sum for a message object of type 'ClearSampleSet-response"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearSampleSet-response>)))
  "Returns full string definition for message of type '<ClearSampleSet-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearSampleSet-response)))
  "Returns full string definition for message of type 'ClearSampleSet-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearSampleSet-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearSampleSet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearSampleSet-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearSampleSet)))
  'ClearSampleSet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearSampleSet)))
  'ClearSampleSet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearSampleSet)))
  "Returns string type for a service object of type '<ClearSampleSet>"
  "kautham/ClearSampleSet")