; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude MoveRobots-request.msg.html

(cl:defclass <MoveRobots-request> (roslisp-msg-protocol:ros-message)
  ((Pose
    :reader Pose
    :initarg :Pose
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass MoveRobots-request (<MoveRobots-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobots-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobots-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<MoveRobots-request> is deprecated: use kautham-srv:MoveRobots-request instead.")))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <MoveRobots-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Pose-val is deprecated.  Use kautham-srv:Pose instead.")
  (Pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobots-request>) ostream)
  "Serializes a message object of type '<MoveRobots-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobots-request>) istream)
  "Deserializes a message object of type '<MoveRobots-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobots-request>)))
  "Returns string type for a service object of type '<MoveRobots-request>"
  "kautham/MoveRobotsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobots-request)))
  "Returns string type for a service object of type 'MoveRobots-request"
  "kautham/MoveRobotsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobots-request>)))
  "Returns md5sum for a message object of type '<MoveRobots-request>"
  "70db0c1cccc6355b0bdf08387d216ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobots-request)))
  "Returns md5sum for a message object of type 'MoveRobots-request"
  "70db0c1cccc6355b0bdf08387d216ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobots-request>)))
  "Returns full string definition for message of type '<MoveRobots-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint Pose~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobots-request)))
  "Returns full string definition for message of type 'MoveRobots-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint Pose~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobots-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobots-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobots-request
    (cl:cons ':Pose (Pose msg))
))
;//! \htmlinclude MoveRobots-response.msg.html

(cl:defclass <MoveRobots-response> (roslisp-msg-protocol:ros-message)
  ((Collision
    :reader Collision
    :initarg :Collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveRobots-response (<MoveRobots-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobots-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobots-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<MoveRobots-response> is deprecated: use kautham-srv:MoveRobots-response instead.")))

(cl:ensure-generic-function 'Collision-val :lambda-list '(m))
(cl:defmethod Collision-val ((m <MoveRobots-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Collision-val is deprecated.  Use kautham-srv:Collision instead.")
  (Collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobots-response>) ostream)
  "Serializes a message object of type '<MoveRobots-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobots-response>) istream)
  "Deserializes a message object of type '<MoveRobots-response>"
    (cl:setf (cl:slot-value msg 'Collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobots-response>)))
  "Returns string type for a service object of type '<MoveRobots-response>"
  "kautham/MoveRobotsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobots-response)))
  "Returns string type for a service object of type 'MoveRobots-response"
  "kautham/MoveRobotsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobots-response>)))
  "Returns md5sum for a message object of type '<MoveRobots-response>"
  "70db0c1cccc6355b0bdf08387d216ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobots-response)))
  "Returns md5sum for a message object of type 'MoveRobots-response"
  "70db0c1cccc6355b0bdf08387d216ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobots-response>)))
  "Returns full string definition for message of type '<MoveRobots-response>"
  (cl:format cl:nil "bool Collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobots-response)))
  "Returns full string definition for message of type 'MoveRobots-response"
  (cl:format cl:nil "bool Collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobots-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobots-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobots-response
    (cl:cons ':Collision (Collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveRobots)))
  'MoveRobots-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveRobots)))
  'MoveRobots-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobots)))
  "Returns string type for a service object of type '<MoveRobots>"
  "kautham/MoveRobots")