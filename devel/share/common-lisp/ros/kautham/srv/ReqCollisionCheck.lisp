; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude ReqCollisionCheck-request.msg.html

(cl:defclass <ReqCollisionCheck-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
   (inactiveRobots
    :reader inactiveRobots
    :initarg :inactiveRobots
    :type cl:fixnum
    :initform 0)
   (inactiveRobotsPose
    :reader inactiveRobotsPose
    :initarg :inactiveRobotsPose
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass ReqCollisionCheck-request (<ReqCollisionCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReqCollisionCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReqCollisionCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ReqCollisionCheck-request> is deprecated: use kautham-srv:ReqCollisionCheck-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ReqCollisionCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:pose-val is deprecated.  Use kautham-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'inactiveRobots-val :lambda-list '(m))
(cl:defmethod inactiveRobots-val ((m <ReqCollisionCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:inactiveRobots-val is deprecated.  Use kautham-srv:inactiveRobots instead.")
  (inactiveRobots m))

(cl:ensure-generic-function 'inactiveRobotsPose-val :lambda-list '(m))
(cl:defmethod inactiveRobotsPose-val ((m <ReqCollisionCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:inactiveRobotsPose-val is deprecated.  Use kautham-srv:inactiveRobotsPose instead.")
  (inactiveRobotsPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReqCollisionCheck-request>) ostream)
  "Serializes a message object of type '<ReqCollisionCheck-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inactiveRobots)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inactiveRobotsPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReqCollisionCheck-request>) istream)
  "Deserializes a message object of type '<ReqCollisionCheck-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inactiveRobots)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inactiveRobotsPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReqCollisionCheck-request>)))
  "Returns string type for a service object of type '<ReqCollisionCheck-request>"
  "kautham/ReqCollisionCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqCollisionCheck-request)))
  "Returns string type for a service object of type 'ReqCollisionCheck-request"
  "kautham/ReqCollisionCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReqCollisionCheck-request>)))
  "Returns md5sum for a message object of type '<ReqCollisionCheck-request>"
  "992adafbe0d033f179058dcbbba1db57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReqCollisionCheck-request)))
  "Returns md5sum for a message object of type 'ReqCollisionCheck-request"
  "992adafbe0d033f179058dcbbba1db57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReqCollisionCheck-request>)))
  "Returns full string definition for message of type '<ReqCollisionCheck-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint pose~%uint8 inactiveRobots~%trajectory_msgs/JointTrajectoryPoint inactiveRobotsPose~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReqCollisionCheck-request)))
  "Returns full string definition for message of type 'ReqCollisionCheck-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint pose~%uint8 inactiveRobots~%trajectory_msgs/JointTrajectoryPoint inactiveRobotsPose~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReqCollisionCheck-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inactiveRobotsPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReqCollisionCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReqCollisionCheck-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':inactiveRobots (inactiveRobots msg))
    (cl:cons ':inactiveRobotsPose (inactiveRobotsPose msg))
))
;//! \htmlinclude ReqCollisionCheck-response.msg.html

(cl:defclass <ReqCollisionCheck-response> (roslisp-msg-protocol:ros-message)
  ((collision
    :reader collision
    :initarg :collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReqCollisionCheck-response (<ReqCollisionCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReqCollisionCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReqCollisionCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<ReqCollisionCheck-response> is deprecated: use kautham-srv:ReqCollisionCheck-response instead.")))

(cl:ensure-generic-function 'collision-val :lambda-list '(m))
(cl:defmethod collision-val ((m <ReqCollisionCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:collision-val is deprecated.  Use kautham-srv:collision instead.")
  (collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReqCollisionCheck-response>) ostream)
  "Serializes a message object of type '<ReqCollisionCheck-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReqCollisionCheck-response>) istream)
  "Deserializes a message object of type '<ReqCollisionCheck-response>"
    (cl:setf (cl:slot-value msg 'collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReqCollisionCheck-response>)))
  "Returns string type for a service object of type '<ReqCollisionCheck-response>"
  "kautham/ReqCollisionCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqCollisionCheck-response)))
  "Returns string type for a service object of type 'ReqCollisionCheck-response"
  "kautham/ReqCollisionCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReqCollisionCheck-response>)))
  "Returns md5sum for a message object of type '<ReqCollisionCheck-response>"
  "992adafbe0d033f179058dcbbba1db57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReqCollisionCheck-response)))
  "Returns md5sum for a message object of type 'ReqCollisionCheck-response"
  "992adafbe0d033f179058dcbbba1db57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReqCollisionCheck-response>)))
  "Returns full string definition for message of type '<ReqCollisionCheck-response>"
  (cl:format cl:nil "bool collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReqCollisionCheck-response)))
  "Returns full string definition for message of type 'ReqCollisionCheck-response"
  (cl:format cl:nil "bool collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReqCollisionCheck-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReqCollisionCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReqCollisionCheck-response
    (cl:cons ':collision (collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReqCollisionCheck)))
  'ReqCollisionCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReqCollisionCheck)))
  'ReqCollisionCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReqCollisionCheck)))
  "Returns string type for a service object of type '<ReqCollisionCheck>"
  "kautham/ReqCollisionCheck")