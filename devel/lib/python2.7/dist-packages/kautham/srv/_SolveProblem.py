# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kautham/SolveProblemRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import trajectory_msgs.msg
import genpy

class SolveProblemRequest(genpy.Message):
  _md5sum = "1a8a473a88813ed9f4679ea2b4f45efa"
  _type = "kautham/SolveProblemRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 obstGoal
trajectory_msgs/JointTrajectoryPoint InitSamp

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
"""
  __slots__ = ['obstGoal','InitSamp']
  _slot_types = ['uint32','trajectory_msgs/JointTrajectoryPoint']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       obstGoal,InitSamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SolveProblemRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.obstGoal is None:
        self.obstGoal = 0
      if self.InitSamp is None:
        self.InitSamp = trajectory_msgs.msg.JointTrajectoryPoint()
    else:
      self.obstGoal = 0
      self.InitSamp = trajectory_msgs.msg.JointTrajectoryPoint()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_I().pack(self.obstGoal))
      length = len(self.InitSamp.positions)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.InitSamp.positions))
      length = len(self.InitSamp.velocities)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.InitSamp.velocities))
      length = len(self.InitSamp.accelerations)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.InitSamp.accelerations))
      length = len(self.InitSamp.effort)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.InitSamp.effort))
      _x = self
      buff.write(_get_struct_2i().pack(_x.InitSamp.time_from_start.secs, _x.InitSamp.time_from_start.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.InitSamp is None:
        self.InitSamp = trajectory_msgs.msg.JointTrajectoryPoint()
      end = 0
      start = end
      end += 4
      (self.obstGoal,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.positions = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.velocities = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.accelerations = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.effort = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 8
      (_x.InitSamp.time_from_start.secs, _x.InitSamp.time_from_start.nsecs,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_I().pack(self.obstGoal))
      length = len(self.InitSamp.positions)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.InitSamp.positions.tostring())
      length = len(self.InitSamp.velocities)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.InitSamp.velocities.tostring())
      length = len(self.InitSamp.accelerations)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.InitSamp.accelerations.tostring())
      length = len(self.InitSamp.effort)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.InitSamp.effort.tostring())
      _x = self
      buff.write(_get_struct_2i().pack(_x.InitSamp.time_from_start.secs, _x.InitSamp.time_from_start.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.InitSamp is None:
        self.InitSamp = trajectory_msgs.msg.JointTrajectoryPoint()
      end = 0
      start = end
      end += 4
      (self.obstGoal,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.positions = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.velocities = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.accelerations = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.InitSamp.effort = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 8
      (_x.InitSamp.time_from_start.secs, _x.InitSamp.time_from_start.nsecs,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kautham/SolveProblemResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import trajectory_msgs.msg
import genpy
import std_msgs.msg

class SolveProblemResponse(genpy.Message):
  _md5sum = "825ab8898f20ccffa9cd69fb9c47f0ff"
  _type = "kautham/SolveProblemResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool status
trajectory_msgs/JointTrajectory SimPlan
trajectory_msgs/JointTrajectory Plan
uint32[] ObstColl
uint32[] SampColl


================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
"""
  __slots__ = ['status','SimPlan','Plan','ObstColl','SampColl']
  _slot_types = ['bool','trajectory_msgs/JointTrajectory','trajectory_msgs/JointTrajectory','uint32[]','uint32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       status,SimPlan,Plan,ObstColl,SampColl

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SolveProblemResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.status is None:
        self.status = False
      if self.SimPlan is None:
        self.SimPlan = trajectory_msgs.msg.JointTrajectory()
      if self.Plan is None:
        self.Plan = trajectory_msgs.msg.JointTrajectory()
      if self.ObstColl is None:
        self.ObstColl = []
      if self.SampColl is None:
        self.SampColl = []
    else:
      self.status = False
      self.SimPlan = trajectory_msgs.msg.JointTrajectory()
      self.Plan = trajectory_msgs.msg.JointTrajectory()
      self.ObstColl = []
      self.SampColl = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B3I().pack(_x.status, _x.SimPlan.header.seq, _x.SimPlan.header.stamp.secs, _x.SimPlan.header.stamp.nsecs))
      _x = self.SimPlan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.SimPlan.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.SimPlan.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.SimPlan.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.SimPlan.points:
        length = len(val1.positions)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.positions))
        length = len(val1.velocities)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.velocities))
        length = len(val1.accelerations)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.accelerations))
        length = len(val1.effort)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.effort))
        _v1 = val1.time_from_start
        _x = _v1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_3I().pack(_x.Plan.header.seq, _x.Plan.header.stamp.secs, _x.Plan.header.stamp.nsecs))
      _x = self.Plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.Plan.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.Plan.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.Plan.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.Plan.points:
        length = len(val1.positions)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.positions))
        length = len(val1.velocities)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.velocities))
        length = len(val1.accelerations)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.accelerations))
        length = len(val1.effort)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.effort))
        _v2 = val1.time_from_start
        _x = _v2
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      length = len(self.ObstColl)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(struct.pack(pattern, *self.ObstColl))
      length = len(self.SampColl)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(struct.pack(pattern, *self.SampColl))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.SimPlan is None:
        self.SimPlan = trajectory_msgs.msg.JointTrajectory()
      if self.Plan is None:
        self.Plan = trajectory_msgs.msg.JointTrajectory()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.status, _x.SimPlan.header.seq, _x.SimPlan.header.stamp.secs, _x.SimPlan.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.status = bool(self.status)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.SimPlan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.SimPlan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.SimPlan.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.SimPlan.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.SimPlan.points = []
      for i in range(0, length):
        val1 = trajectory_msgs.msg.JointTrajectoryPoint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.positions = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.velocities = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.accelerations = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.effort = struct.unpack(pattern, str[start:end])
        _v3 = val1.time_from_start
        _x = _v3
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.SimPlan.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.Plan.header.seq, _x.Plan.header.stamp.secs, _x.Plan.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Plan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.Plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Plan.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.Plan.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Plan.points = []
      for i in range(0, length):
        val1 = trajectory_msgs.msg.JointTrajectoryPoint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.positions = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.velocities = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.accelerations = struct.unpack(pattern, str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.effort = struct.unpack(pattern, str[start:end])
        _v4 = val1.time_from_start
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.Plan.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.ObstColl = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.SampColl = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B3I().pack(_x.status, _x.SimPlan.header.seq, _x.SimPlan.header.stamp.secs, _x.SimPlan.header.stamp.nsecs))
      _x = self.SimPlan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.SimPlan.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.SimPlan.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.SimPlan.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.SimPlan.points:
        length = len(val1.positions)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.positions.tostring())
        length = len(val1.velocities)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.velocities.tostring())
        length = len(val1.accelerations)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.accelerations.tostring())
        length = len(val1.effort)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.effort.tostring())
        _v5 = val1.time_from_start
        _x = _v5
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      _x = self
      buff.write(_get_struct_3I().pack(_x.Plan.header.seq, _x.Plan.header.stamp.secs, _x.Plan.header.stamp.nsecs))
      _x = self.Plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.Plan.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.Plan.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.Plan.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.Plan.points:
        length = len(val1.positions)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.positions.tostring())
        length = len(val1.velocities)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.velocities.tostring())
        length = len(val1.accelerations)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.accelerations.tostring())
        length = len(val1.effort)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.effort.tostring())
        _v6 = val1.time_from_start
        _x = _v6
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
      length = len(self.ObstColl)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(self.ObstColl.tostring())
      length = len(self.SampColl)
      buff.write(_struct_I.pack(length))
      pattern = '<%sI'%length
      buff.write(self.SampColl.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.SimPlan is None:
        self.SimPlan = trajectory_msgs.msg.JointTrajectory()
      if self.Plan is None:
        self.Plan = trajectory_msgs.msg.JointTrajectory()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.status, _x.SimPlan.header.seq, _x.SimPlan.header.stamp.secs, _x.SimPlan.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.status = bool(self.status)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.SimPlan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.SimPlan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.SimPlan.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.SimPlan.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.SimPlan.points = []
      for i in range(0, length):
        val1 = trajectory_msgs.msg.JointTrajectoryPoint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.positions = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.velocities = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.accelerations = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.effort = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        _v7 = val1.time_from_start
        _x = _v7
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.SimPlan.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.Plan.header.seq, _x.Plan.header.stamp.secs, _x.Plan.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Plan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.Plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Plan.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.Plan.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Plan.points = []
      for i in range(0, length):
        val1 = trajectory_msgs.msg.JointTrajectoryPoint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.positions = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.velocities = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.accelerations = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.effort = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        _v8 = val1.time_from_start
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.Plan.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.ObstColl = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sI'%length
      start = end
      end += struct.calcsize(pattern)
      self.SampColl = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
class SolveProblem(object):
  _type          = 'kautham/SolveProblem'
  _md5sum = 'c1dcdacd4174100dfb5a14345ba2067d'
  _request_class  = SolveProblemRequest
  _response_class = SolveProblemResponse