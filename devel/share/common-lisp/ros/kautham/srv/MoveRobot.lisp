; Auto-generated. Do not edit!


(cl:in-package kautham-srv)


;//! \htmlinclude MoveRobot-request.msg.html

(cl:defclass <MoveRobot-request> (roslisp-msg-protocol:ros-message)
  ((Robot
    :reader Robot
    :initarg :Robot
    :type cl:integer
    :initform 0)
   (Pose
    :reader Pose
    :initarg :Pose
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass MoveRobot-request (<MoveRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<MoveRobot-request> is deprecated: use kautham-srv:MoveRobot-request instead.")))

(cl:ensure-generic-function 'Robot-val :lambda-list '(m))
(cl:defmethod Robot-val ((m <MoveRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Robot-val is deprecated.  Use kautham-srv:Robot instead.")
  (Robot m))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <MoveRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Pose-val is deprecated.  Use kautham-srv:Pose instead.")
  (Pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot-request>) ostream)
  "Serializes a message object of type '<MoveRobot-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Robot)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot-request>) istream)
  "Deserializes a message object of type '<MoveRobot-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Robot)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot-request>)))
  "Returns string type for a service object of type '<MoveRobot-request>"
  "kautham/MoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot-request)))
  "Returns string type for a service object of type 'MoveRobot-request"
  "kautham/MoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot-request>)))
  "Returns md5sum for a message object of type '<MoveRobot-request>"
  "7d2fa353eab7f3aad5af70b3c594c919")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot-request)))
  "Returns md5sum for a message object of type 'MoveRobot-request"
  "7d2fa353eab7f3aad5af70b3c594c919")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot-request>)))
  "Returns full string definition for message of type '<MoveRobot-request>"
  (cl:format cl:nil "uint32 Robot~%trajectory_msgs/JointTrajectoryPoint Pose~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot-request)))
  "Returns full string definition for message of type 'MoveRobot-request"
  (cl:format cl:nil "uint32 Robot~%trajectory_msgs/JointTrajectoryPoint Pose~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot-request
    (cl:cons ':Robot (Robot msg))
    (cl:cons ':Pose (Pose msg))
))
;//! \htmlinclude MoveRobot-response.msg.html

(cl:defclass <MoveRobot-response> (roslisp-msg-protocol:ros-message)
  ((Collision
    :reader Collision
    :initarg :Collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveRobot-response (<MoveRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-srv:<MoveRobot-response> is deprecated: use kautham-srv:MoveRobot-response instead.")))

(cl:ensure-generic-function 'Collision-val :lambda-list '(m))
(cl:defmethod Collision-val ((m <MoveRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-srv:Collision-val is deprecated.  Use kautham-srv:Collision instead.")
  (Collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot-response>) ostream)
  "Serializes a message object of type '<MoveRobot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot-response>) istream)
  "Deserializes a message object of type '<MoveRobot-response>"
    (cl:setf (cl:slot-value msg 'Collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot-response>)))
  "Returns string type for a service object of type '<MoveRobot-response>"
  "kautham/MoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot-response)))
  "Returns string type for a service object of type 'MoveRobot-response"
  "kautham/MoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot-response>)))
  "Returns md5sum for a message object of type '<MoveRobot-response>"
  "7d2fa353eab7f3aad5af70b3c594c919")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot-response)))
  "Returns md5sum for a message object of type 'MoveRobot-response"
  "7d2fa353eab7f3aad5af70b3c594c919")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot-response>)))
  "Returns full string definition for message of type '<MoveRobot-response>"
  (cl:format cl:nil "bool Collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot-response)))
  "Returns full string definition for message of type 'MoveRobot-response"
  (cl:format cl:nil "bool Collision~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot-response
    (cl:cons ':Collision (Collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveRobot)))
  'MoveRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveRobot)))
  'MoveRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot)))
  "Returns string type for a service object of type '<MoveRobot>"
  "kautham/MoveRobot")