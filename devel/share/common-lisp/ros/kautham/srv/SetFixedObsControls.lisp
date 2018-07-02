; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SetFixedObsControls-request.msg.html

(cl:defclass <SetFixedObsControls-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetFixedObsControls-request (<SetFixedObsControls-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFixedObsControls-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFixedObsControls-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetFixedObsControls-request> is deprecated: use kautham-srv:SetFixedObsControls-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFixedObsControls-request>) ostream)
  "Serializes a message object of type '<SetFixedObsControls-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFixedObsControls-request>) istream)
  "Deserializes a message object of type '<SetFixedObsControls-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFixedObsControls-request>)))
  "Returns string type for a service object of type '<SetFixedObsControls-request>"
  "kautham/SetFixedObsControlsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFixedObsControls-request)))
  "Returns string type for a service object of type 'SetFixedObsControls-request"
  "kautham/SetFixedObsControlsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFixedObsControls-request>)))
  "Returns md5sum for a message object of type '<SetFixedObsControls-request>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFixedObsControls-request)))
  "Returns md5sum for a message object of type 'SetFixedObsControls-request"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFixedObsControls-request>)))
  "Returns full string definition for message of type '<SetFixedObsControls-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFixedObsControls-request)))
  "Returns full string definition for message of type 'SetFixedObsControls-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFixedObsControls-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFixedObsControls-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFixedObsControls-request
))
;//! \htmlinclude SetFixedObsControls-response.msg.html

(cl:defclass <SetFixedObsControls-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetFixedObsControls-response (<SetFixedObsControls-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFixedObsControls-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFixedObsControls-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SetFixedObsControls-response> is deprecated: use kautham-srv:SetFixedObsControls-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetFixedObsControls-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:response-val is deprecated.  Use kautham-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFixedObsControls-response>) ostream)
  "Serializes a message object of type '<SetFixedObsControls-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFixedObsControls-response>) istream)
  "Deserializes a message object of type '<SetFixedObsControls-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFixedObsControls-response>)))
  "Returns string type for a service object of type '<SetFixedObsControls-response>"
  "kautham/SetFixedObsControlsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFixedObsControls-response)))
  "Returns string type for a service object of type 'SetFixedObsControls-response"
  "kautham/SetFixedObsControlsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFixedObsControls-response>)))
  "Returns md5sum for a message object of type '<SetFixedObsControls-response>"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFixedObsControls-response)))
  "Returns md5sum for a message object of type 'SetFixedObsControls-response"
  "003b81baa95ab323fc1ddf3c7d0bee81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFixedObsControls-response>)))
  "Returns full string definition for message of type '<SetFixedObsControls-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFixedObsControls-response)))
  "Returns full string definition for message of type 'SetFixedObsControls-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFixedObsControls-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFixedObsControls-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFixedObsControls-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFixedObsControls)))
  'SetFixedObsControls-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFixedObsControls)))
  'SetFixedObsControls-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFixedObsControls)))
  "Returns string type for a service object of type '<SetFixedObsControls>"
  "kautham/SetFixedObsControls")