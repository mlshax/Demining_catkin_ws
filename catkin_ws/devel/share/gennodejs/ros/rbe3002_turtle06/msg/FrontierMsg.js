// Auto-generated. Do not edit!

// (in-package rbe3002_turtle06.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FrontierMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.centroid = null;
      this.cell_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('centroid')) {
        this.centroid = initObj.centroid
      }
      else {
        this.centroid = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('cell_positions')) {
        this.cell_positions = initObj.cell_positions
      }
      else {
        this.cell_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrontierMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [centroid]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.centroid, buffer, bufferOffset);
    // Serialize message field [cell_positions]
    // Serialize the length for message field [cell_positions]
    bufferOffset = _serializer.uint32(obj.cell_positions.length, buffer, bufferOffset);
    obj.cell_positions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrontierMsg
    let len;
    let data = new FrontierMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [centroid]
    data.centroid = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [cell_positions]
    // Deserialize array length for message field [cell_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cell_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cell_positions[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.cell_positions.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rbe3002_turtle06/FrontierMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4134cb203df22c66dd1dc71eb3cd5c11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Point centroid
    geometry_msgs/Point[] cell_positions
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrontierMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.centroid !== undefined) {
      resolved.centroid = geometry_msgs.msg.Point.Resolve(msg.centroid)
    }
    else {
      resolved.centroid = new geometry_msgs.msg.Point()
    }

    if (msg.cell_positions !== undefined) {
      resolved.cell_positions = new Array(msg.cell_positions.length);
      for (let i = 0; i < resolved.cell_positions.length; ++i) {
        resolved.cell_positions[i] = geometry_msgs.msg.Point.Resolve(msg.cell_positions[i]);
      }
    }
    else {
      resolved.cell_positions = []
    }

    return resolved;
    }
};

module.exports = FrontierMsg;
