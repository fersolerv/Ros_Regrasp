; Auto-generated. Do not edit!


(cl:in-package kautham-msg)


;//! \htmlinclude fVector.msg.html

(cl:defclass <fVector> (roslisp-msg-protocol:ros-message)
  ((v
    :reader v
    :initarg :v
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass fVector (<fVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kautham-msg:<fVector> is deprecated: use kautham-msg:fVector instead.")))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <fVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kautham-msg:v-val is deprecated.  Use kautham-msg:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fVector>) ostream)
  "Serializes a message object of type '<fVector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'v))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fVector>) istream)
  "Deserializes a message object of type '<fVector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'v) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'v)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fVector>)))
  "Returns string type for a message object of type '<fVector>"
  "kautham/fVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fVector)))
  "Returns string type for a message object of type 'fVector"
  "kautham/fVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fVector>)))
  "Returns md5sum for a message object of type '<fVector>"
  "05b3ad5113715ae3bf7f96db2f38f780")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fVector)))
  "Returns md5sum for a message object of type 'fVector"
  "05b3ad5113715ae3bf7f96db2f38f780")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fVector>)))
  "Returns full string definition for message of type '<fVector>"
  (cl:format cl:nil "float32[] v~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fVector)))
  "Returns full string definition for message of type 'fVector"
  (cl:format cl:nil "float32[] v~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fVector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'v) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fVector>))
  "Converts a ROS message object to a list"
  (cl:list 'fVector
    (cl:cons ':v (v msg))
))
