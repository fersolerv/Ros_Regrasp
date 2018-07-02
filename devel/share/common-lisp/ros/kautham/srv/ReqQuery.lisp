; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude ReqQuery-request.msg.html

(cl:defclass <ReqQuery-request> (roslisp-msg-protocol:ros-message)
  ((Init
    :reader Init
    :initarg :Init
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
   (Goal
    :reader Goal
    :initarg :Goal
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass ReqQuery-request (<ReqQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReqQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReqQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ReqQuery-request> is deprecated: use kautham-srv:ReqQuery-request instead.")))

(cl:ensure-generic-function 'Init-val :lambda-list '(m))
(cl:defmethod Init-val ((m <ReqQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Init-val is deprecated.  Use kautham-srv:Init instead.")
  (Init m))

(cl:ensure-generic-function 'Goal-val :lambda-list '(m))
(cl:defmethod Goal-val ((m <ReqQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Goal-val is deprecated.  Use kautham-srv:Goal instead.")
  (Goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReqQuery-request>) ostream)
  "Serializes a message object of type '<ReqQuery-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Init) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReqQuery-request>) istream)
  "Deserializes a message object of type '<ReqQuery-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Init) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReqQuery-request>)))
  "Returns string type for a service object of type '<ReqQuery-request>"
  "kautham/ReqQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqQuery-request)))
  "Returns string type for a service object of type 'ReqQuery-request"
  "kautham/ReqQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReqQuery-request>)))
  "Returns md5sum for a message object of type '<ReqQuery-request>"
  "8010f0f37baac8a6f515fc9a51c49b20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReqQuery-request)))
  "Returns md5sum for a message object of type 'ReqQuery-request"
  "8010f0f37baac8a6f515fc9a51c49b20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReqQuery-request>)))
  "Returns full string definition for message of type '<ReqQuery-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint Init~%trajectory_msgs/JointTrajectoryPoint Goal~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReqQuery-request)))
  "Returns full string definition for message of type 'ReqQuery-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint Init~%trajectory_msgs/JointTrajectoryPoint Goal~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReqQuery-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Init))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReqQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReqQuery-request
    (cl:cons ':Init (Init msg))
    (cl:cons ':Goal (Goal msg))
))
;//! \htmlinclude ReqQuery-response.msg.html

(cl:defclass <ReqQuery-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (plan
    :reader plan
    :initarg :plan
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ReqQuery-response (<ReqQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReqQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReqQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ReqQuery-response> is deprecated: use kautham-srv:ReqQuery-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ReqQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <ReqQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:plan-val is deprecated.  Use kautham-srv:plan instead.")
  (plan m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <ReqQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:obstacles-val is deprecated.  Use kautham-srv:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReqQuery-response>) ostream)
  "Serializes a message object of type '<ReqQuery-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReqQuery-response>) istream)
  "Deserializes a message object of type '<ReqQuery-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReqQuery-response>)))
  "Returns string type for a service object of type '<ReqQuery-response>"
  "kautham/ReqQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqQuery-response)))
  "Returns string type for a service object of type 'ReqQuery-response"
  "kautham/ReqQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReqQuery-response>)))
  "Returns md5sum for a message object of type '<ReqQuery-response>"
  "8010f0f37baac8a6f515fc9a51c49b20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReqQuery-response)))
  "Returns md5sum for a message object of type 'ReqQuery-response"
  "8010f0f37baac8a6f515fc9a51c49b20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReqQuery-response>)))
  "Returns full string definition for message of type '<ReqQuery-response>"
  (cl:format cl:nil "bool status~%trajectory_msgs/JointTrajectory plan~%uint32[] obstacles~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReqQuery-response)))
  "Returns full string definition for message of type 'ReqQuery-response"
  (cl:format cl:nil "bool status~%trajectory_msgs/JointTrajectory plan~%uint32[] obstacles~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReqQuery-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReqQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReqQuery-response
    (cl:cons ':status (status msg))
    (cl:cons ':plan (plan msg))
    (cl:cons ':obstacles (obstacles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReqQuery)))
  'ReqQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReqQuery)))
  'ReqQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqQuery)))
  "Returns string type for a service object of type '<ReqQuery>"
  "kautham/ReqQuery")