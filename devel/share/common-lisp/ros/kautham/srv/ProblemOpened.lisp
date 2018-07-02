; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude ProblemOpened-request.msg.html

(cl:defclass <ProblemOpened-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ProblemOpened-request (<ProblemOpened-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProblemOpened-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProblemOpened-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ProblemOpened-request> is deprecated: use kautham-srv:ProblemOpened-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProblemOpened-request>) ostream)
  "Serializes a message object of type '<ProblemOpened-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProblemOpened-request>) istream)
  "Deserializes a message object of type '<ProblemOpened-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProblemOpened-request>)))
  "Returns string type for a service object of type '<ProblemOpened-request>"
  "kautham/ProblemOpenedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProblemOpened-request)))
  "Returns string type for a service object of type 'ProblemOpened-request"
  "kautham/ProblemOpenedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProblemOpened-request>)))
  "Returns md5sum for a message object of type '<ProblemOpened-request>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProblemOpened-request)))
  "Returns md5sum for a message object of type 'ProblemOpened-request"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProblemOpened-request>)))
  "Returns full string definition for message of type '<ProblemOpened-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProblemOpened-request)))
  "Returns full string definition for message of type 'ProblemOpened-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProblemOpened-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProblemOpened-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProblemOpened-request
))
;//! \htmlinclude ProblemOpened-response.msg.html

(cl:defclass <ProblemOpened-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ProblemOpened-response (<ProblemOpened-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProblemOpened-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProblemOpened-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ProblemOpened-response> is deprecated: use kautham-srv:ProblemOpened-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <ProblemOpened-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProblemOpened-response>) ostream)
  "Serializes a message object of type '<ProblemOpened-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProblemOpened-response>) istream)
  "Deserializes a message object of type '<ProblemOpened-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProblemOpened-response>)))
  "Returns string type for a service object of type '<ProblemOpened-response>"
  "kautham/ProblemOpenedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProblemOpened-response)))
  "Returns string type for a service object of type 'ProblemOpened-response"
  "kautham/ProblemOpenedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProblemOpened-response>)))
  "Returns md5sum for a message object of type '<ProblemOpened-response>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProblemOpened-response)))
  "Returns md5sum for a message object of type 'ProblemOpened-response"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProblemOpened-response>)))
  "Returns full string definition for message of type '<ProblemOpened-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProblemOpened-response)))
  "Returns full string definition for message of type 'ProblemOpened-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProblemOpened-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProblemOpened-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProblemOpened-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProblemOpened)))
  'ProblemOpened-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProblemOpened)))
  'ProblemOpened-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProblemOpened)))
  "Returns string type for a service object of type '<ProblemOpened>"
  "kautham/ProblemOpened")