; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude SolveProblem-request.msg.html

(cl:defclass <SolveProblem-request> (roslisp-msg-protocol:ros-message)
  ((obstGoal
    :reader obstGoal
    :initarg :obstGoal
    :type cl:integer
    :initform 0)
   (InitSamp
    :reader InitSamp
    :initarg :InitSamp
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass SolveProblem-request (<SolveProblem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolveProblem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolveProblem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SolveProblem-request> is deprecated: use kautham-srv:SolveProblem-request instead.")))

(cl:ensure-generic-function 'obstGoal-val :lambda-list '(m))
(cl:defmethod obstGoal-val ((m <SolveProblem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:obstGoal-val is deprecated.  Use kautham-srv:obstGoal instead.")
  (obstGoal m))

(cl:ensure-generic-function 'InitSamp-val :lambda-list '(m))
(cl:defmethod InitSamp-val ((m <SolveProblem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:InitSamp-val is deprecated.  Use kautham-srv:InitSamp instead.")
  (InitSamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolveProblem-request>) ostream)
  "Serializes a message object of type '<SolveProblem-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstGoal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obstGoal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obstGoal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obstGoal)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'InitSamp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolveProblem-request>) istream)
  "Deserializes a message object of type '<SolveProblem-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstGoal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obstGoal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obstGoal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obstGoal)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'InitSamp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolveProblem-request>)))
  "Returns string type for a service object of type '<SolveProblem-request>"
  "kautham/SolveProblemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolveProblem-request)))
  "Returns string type for a service object of type 'SolveProblem-request"
  "kautham/SolveProblemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolveProblem-request>)))
  "Returns md5sum for a message object of type '<SolveProblem-request>"
  "c1dcdacd4174100dfb5a14345ba2067d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolveProblem-request)))
  "Returns md5sum for a message object of type 'SolveProblem-request"
  "c1dcdacd4174100dfb5a14345ba2067d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolveProblem-request>)))
  "Returns full string definition for message of type '<SolveProblem-request>"
  (cl:format cl:nil "uint32 obstGoal~%trajectory_msgs/JointTrajectoryPoint InitSamp~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolveProblem-request)))
  "Returns full string definition for message of type 'SolveProblem-request"
  (cl:format cl:nil "uint32 obstGoal~%trajectory_msgs/JointTrajectoryPoint InitSamp~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolveProblem-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'InitSamp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolveProblem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SolveProblem-request
    (cl:cons ':obstGoal (obstGoal msg))
    (cl:cons ':InitSamp (InitSamp msg))
))
;//! \htmlinclude SolveProblem-response.msg.html

(cl:defclass <SolveProblem-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (SimPlan
    :reader SimPlan
    :initarg :SimPlan
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (Plan
    :reader Plan
    :initarg :Plan
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (ObstColl
    :reader ObstColl
    :initarg :ObstColl
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (SampColl
    :reader SampColl
    :initarg :SampColl
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SolveProblem-response (<SolveProblem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolveProblem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolveProblem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<SolveProblem-response> is deprecated: use kautham-srv:SolveProblem-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SolveProblem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:status-val is deprecated.  Use kautham-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'SimPlan-val :lambda-list '(m))
(cl:defmethod SimPlan-val ((m <SolveProblem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:SimPlan-val is deprecated.  Use kautham-srv:SimPlan instead.")
  (SimPlan m))

(cl:ensure-generic-function 'Plan-val :lambda-list '(m))
(cl:defmethod Plan-val ((m <SolveProblem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Plan-val is deprecated.  Use kautham-srv:Plan instead.")
  (Plan m))

(cl:ensure-generic-function 'ObstColl-val :lambda-list '(m))
(cl:defmethod ObstColl-val ((m <SolveProblem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:ObstColl-val is deprecated.  Use kautham-srv:ObstColl instead.")
  (ObstColl m))

(cl:ensure-generic-function 'SampColl-val :lambda-list '(m))
(cl:defmethod SampColl-val ((m <SolveProblem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:SampColl-val is deprecated.  Use kautham-srv:SampColl instead.")
  (SampColl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolveProblem-response>) ostream)
  "Serializes a message object of type '<SolveProblem-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'SimPlan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Plan) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ObstColl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'ObstColl))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'SampColl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'SampColl))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolveProblem-response>) istream)
  "Deserializes a message object of type '<SolveProblem-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'SimPlan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Plan) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ObstColl) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ObstColl)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'SampColl) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'SampColl)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolveProblem-response>)))
  "Returns string type for a service object of type '<SolveProblem-response>"
  "kautham/SolveProblemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolveProblem-response)))
  "Returns string type for a service object of type 'SolveProblem-response"
  "kautham/SolveProblemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolveProblem-response>)))
  "Returns md5sum for a message object of type '<SolveProblem-response>"
  "c1dcdacd4174100dfb5a14345ba2067d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolveProblem-response)))
  "Returns md5sum for a message object of type 'SolveProblem-response"
  "c1dcdacd4174100dfb5a14345ba2067d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolveProblem-response>)))
  "Returns full string definition for message of type '<SolveProblem-response>"
  (cl:format cl:nil "bool status~%trajectory_msgs/JointTrajectory SimPlan~%trajectory_msgs/JointTrajectory Plan~%uint32[] ObstColl~%uint32[] SampColl~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolveProblem-response)))
  "Returns full string definition for message of type 'SolveProblem-response"
  (cl:format cl:nil "bool status~%trajectory_msgs/JointTrajectory SimPlan~%trajectory_msgs/JointTrajectory Plan~%uint32[] ObstColl~%uint32[] SampColl~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolveProblem-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'SimPlan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Plan))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ObstColl) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'SampColl) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolveProblem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SolveProblem-response
    (cl:cons ':status (status msg))
    (cl:cons ':SimPlan (SimPlan msg))
    (cl:cons ':Plan (Plan msg))
    (cl:cons ':ObstColl (ObstColl msg))
    (cl:cons ':SampColl (SampColl msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SolveProblem)))
  'SolveProblem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SolveProblem)))
  'SolveProblem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolveProblem)))
  "Returns string type for a service object of type '<SolveProblem>"
  "kautham/SolveProblem")