; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude ReqPlan-request.msg.html

(cl:defclass <ReqPlan-request> (roslisp-msg-protocol:ros-message)
  ((problem
    :reader problem
    :initarg :problem
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ReqPlan-request (<ReqPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReqPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReqPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ReqPlan-request> is deprecated: use kautham-srv:ReqPlan-request instead.")))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <ReqPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:problem-val is deprecated.  Use kautham-srv:problem instead.")
  (problem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReqPlan-request>) ostream)
  "Serializes a message object of type '<ReqPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'problem) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReqPlan-request>) istream)
  "Deserializes a message object of type '<ReqPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'problem) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReqPlan-request>)))
  "Returns string type for a service object of type '<ReqPlan-request>"
  "kautham/ReqPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqPlan-request)))
  "Returns string type for a service object of type 'ReqPlan-request"
  "kautham/ReqPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReqPlan-request>)))
  "Returns md5sum for a message object of type '<ReqPlan-request>"
  "c28c6945c8dac4a6baf20710ae93dd37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReqPlan-request)))
  "Returns md5sum for a message object of type 'ReqPlan-request"
  "c28c6945c8dac4a6baf20710ae93dd37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReqPlan-request>)))
  "Returns full string definition for message of type '<ReqPlan-request>"
  (cl:format cl:nil "std_msgs/String problem~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReqPlan-request)))
  "Returns full string definition for message of type 'ReqPlan-request"
  (cl:format cl:nil "std_msgs/String problem~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReqPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'problem))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReqPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReqPlan-request
    (cl:cons ':problem (problem msg))
))
;//! \htmlinclude ReqPlan-response.msg.html

(cl:defclass <ReqPlan-response> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass ReqPlan-response (<ReqPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReqPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReqPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ReqPlan-response> is deprecated: use kautham-srv:ReqPlan-response instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <ReqPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:plan-val is deprecated.  Use kautham-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReqPlan-response>) ostream)
  "Serializes a message object of type '<ReqPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReqPlan-response>) istream)
  "Deserializes a message object of type '<ReqPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReqPlan-response>)))
  "Returns string type for a service object of type '<ReqPlan-response>"
  "kautham/ReqPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqPlan-response)))
  "Returns string type for a service object of type 'ReqPlan-response"
  "kautham/ReqPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReqPlan-response>)))
  "Returns md5sum for a message object of type '<ReqPlan-response>"
  "c28c6945c8dac4a6baf20710ae93dd37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReqPlan-response)))
  "Returns md5sum for a message object of type 'ReqPlan-response"
  "c28c6945c8dac4a6baf20710ae93dd37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReqPlan-response>)))
  "Returns full string definition for message of type '<ReqPlan-response>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory plan~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReqPlan-response)))
  "Returns full string definition for message of type 'ReqPlan-response"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory plan~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReqPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReqPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReqPlan-response
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReqPlan)))
  'ReqPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReqPlan)))
  'ReqPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqPlan)))
  "Returns string type for a service object of type '<ReqPlan>"
  "kautham/ReqPlan")