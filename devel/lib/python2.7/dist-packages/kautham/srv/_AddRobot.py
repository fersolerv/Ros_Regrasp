# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kautham/AddRobotRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import kautham.msg

class AddRobotRequest(genpy.Message):
  _md5sum = "9c653a2cea0cdd7e7799a331e71f14a8"
  _type = "kautham/AddRobotRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string robot
float32 scale
float32[] home
fVector[] limits
fVector[] mapMatrix
float32[] offMatrix

================================================================================
MSG: kautham/fVector
float32[] v

"""
  __slots__ = ['robot','scale','home','limits','mapMatrix','offMatrix']
  _slot_types = ['string','float32','float32[]','kautham/fVector[]','kautham/fVector[]','float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       robot,scale,home,limits,mapMatrix,offMatrix

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AddRobotRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.robot is None:
        self.robot = ''
      if self.scale is None:
        self.scale = 0.
      if self.home is None:
        self.home = []
      if self.limits is None:
        self.limits = []
      if self.mapMatrix is None:
        self.mapMatrix = []
      if self.offMatrix is None:
        self.offMatrix = []
    else:
      self.robot = ''
      self.scale = 0.
      self.home = []
      self.limits = []
      self.mapMatrix = []
      self.offMatrix = []

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
      _x = self.robot
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_f().pack(self.scale))
      length = len(self.home)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.home))
      length = len(self.limits)
      buff.write(_struct_I.pack(length))
      for val1 in self.limits:
        length = len(val1.v)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.v))
      length = len(self.mapMatrix)
      buff.write(_struct_I.pack(length))
      for val1 in self.mapMatrix:
        length = len(val1.v)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.v))
      length = len(self.offMatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.offMatrix))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.limits is None:
        self.limits = None
      if self.mapMatrix is None:
        self.mapMatrix = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot = str[start:end].decode('utf-8')
      else:
        self.robot = str[start:end]
      start = end
      end += 4
      (self.scale,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.home = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.limits = []
      for i in range(0, length):
        val1 = kautham.msg.fVector()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.v = struct.unpack(pattern, str[start:end])
        self.limits.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.mapMatrix = []
      for i in range(0, length):
        val1 = kautham.msg.fVector()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.v = struct.unpack(pattern, str[start:end])
        self.mapMatrix.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.offMatrix = struct.unpack(pattern, str[start:end])
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
      _x = self.robot
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_f().pack(self.scale))
      length = len(self.home)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.home.tostring())
      length = len(self.limits)
      buff.write(_struct_I.pack(length))
      for val1 in self.limits:
        length = len(val1.v)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.v.tostring())
      length = len(self.mapMatrix)
      buff.write(_struct_I.pack(length))
      for val1 in self.mapMatrix:
        length = len(val1.v)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.v.tostring())
      length = len(self.offMatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.offMatrix.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.limits is None:
        self.limits = None
      if self.mapMatrix is None:
        self.mapMatrix = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot = str[start:end].decode('utf-8')
      else:
        self.robot = str[start:end]
      start = end
      end += 4
      (self.scale,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.home = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.limits = []
      for i in range(0, length):
        val1 = kautham.msg.fVector()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.v = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.limits.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.mapMatrix = []
      for i in range(0, length):
        val1 = kautham.msg.fVector()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.v = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.mapMatrix.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.offMatrix = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kautham/AddRobotResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AddRobotResponse(genpy.Message):
  _md5sum = "4bf37bc717f68787645077428bea3751"
  _type = "kautham/AddRobotResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 response

"""
  __slots__ = ['response']
  _slot_types = ['int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       response

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AddRobotResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.response is None:
        self.response = 0
    else:
      self.response = 0

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
      buff.write(_get_struct_q().pack(self.response))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 8
      (self.response,) = _get_struct_q().unpack(str[start:end])
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
      buff.write(_get_struct_q().pack(self.response))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 8
      (self.response,) = _get_struct_q().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_q = None
def _get_struct_q():
    global _struct_q
    if _struct_q is None:
        _struct_q = struct.Struct("<q")
    return _struct_q
class AddRobot(object):
  _type          = 'kautham/AddRobot'
  _md5sum = 'cd3e6627dc1126b5a84d0fb3747c15da'
  _request_class  = AddRobotRequest
  _response_class = AddRobotResponse
