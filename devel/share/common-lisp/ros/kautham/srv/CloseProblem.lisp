; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude CloseProblem-request.msg.html

(cl:defclass <CloseProblem-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CloseProblem-request (<CloseProblem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseProblem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseProblem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<CloseProblem-request> is deprecated: use kautham-srv:CloseProblem-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseProblem-request>) ostream)
  "Serializes a message object of type '<CloseProblem-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseProblem-request>) istream)
  "Deserializes a message object of type '<CloseProblem-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseProblem-request>)))
  "Returns string type for a service object of type '<CloseProblem-request>"
  "kautham/CloseProblemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseProblem-request)))
  "Returns string type for a service object of type 'CloseProblem-request"
  "kautham/CloseProblemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseProblem-request>)))
  "Returns md5sum for a message object of type '<CloseProblem-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseProblem-request)))
  "Returns md5sum for a message object of type 'CloseProblem-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseProblem-request>)))
  "Returns full string definition for message of type '<CloseProblem-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseProblem-request)))
  "Returns full string definition for message of type 'CloseProblem-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseProblem-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseProblem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseProblem-request
))
;//! \htmlinclude CloseProblem-response.msg.html

(cl:defclass <CloseProblem-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CloseProblem-response (<CloseProblem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseProblem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseProblem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<CloseProblem-response> is deprecated: use kautham-srv:CloseProblem-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseProblem-response>) ostream)
  "Serializes a message object of type '<CloseProblem-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseProblem-response>) istream)
  "Deserializes a message object of type '<CloseProblem-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseProblem-response>)))
  "Returns string type for a service object of type '<CloseProblem-response>"
  "kautham/CloseProblemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseProblem-response)))
  "Returns string type for a service object of type 'CloseProblem-response"
  "kautham/CloseProblemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseProblem-response>)))
  "Returns md5sum for a message object of type '<CloseProblem-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseProblem-response)))
  "Returns md5sum for a message object of type 'CloseProblem-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseProblem-response>)))
  "Returns full string definition for message of type '<CloseProblem-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseProblem-response)))
  "Returns full string definition for message of type 'CloseProblem-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseProblem-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseProblem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseProblem-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CloseProblem)))
  'CloseProblem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CloseProblem)))
  'CloseProblem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseProblem)))
  "Returns string type for a service object of type '<CloseProblem>"
  "kautham/CloseProblem")