; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude Solve-request.msg.html

(cl:defclass <Solve-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Solve-request (<Solve-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Solve-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Solve-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<Solve-request> is deprecated: use kautham-srv:Solve-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Solve-request>) ostream)
  "Serializes a message object of type '<Solve-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Solve-request>) istream)
  "Deserializes a message object of type '<Solve-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Solve-request>)))
  "Returns string type for a service object of type '<Solve-request>"
  "kautham/SolveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Solve-request)))
  "Returns string type for a service object of type 'Solve-request"
  "kautham/SolveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Solve-request>)))
  "Returns md5sum for a message object of type '<Solve-request>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Solve-request)))
  "Returns md5sum for a message object of type 'Solve-request"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Solve-request>)))
  "Returns full string definition for message of type '<Solve-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Solve-request)))
  "Returns full string definition for message of type 'Solve-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Solve-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Solve-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Solve-request
))
;//! \htmlinclude Solve-response.msg.html

(cl:defclass <Solve-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Solve-response (<Solve-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Solve-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Solve-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<Solve-response> is deprecated: use kautham-srv:Solve-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <Solve-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Solve-response>) ostream)
  "Serializes a message object of type '<Solve-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Solve-response>) istream)
  "Deserializes a message object of type '<Solve-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Solve-response>)))
  "Returns string type for a service object of type '<Solve-response>"
  "kautham/SolveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Solve-response)))
  "Returns string type for a service object of type 'Solve-response"
  "kautham/SolveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Solve-response>)))
  "Returns md5sum for a message object of type '<Solve-response>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Solve-response)))
  "Returns md5sum for a message object of type 'Solve-response"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Solve-response>)))
  "Returns full string definition for message of type '<Solve-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Solve-response)))
  "Returns full string definition for message of type 'Solve-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Solve-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Solve-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Solve-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Solve)))
  'Solve-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Solve)))
  'Solve-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Solve)))
  "Returns string type for a service object of type '<Solve>"
  "kautham/Solve")