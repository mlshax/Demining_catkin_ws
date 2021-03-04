// Auto-generated. Do not edit!

// (in-package rbe3002_turtle06.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let FrontierMsg = require('../msg/FrontierMsg.js');

//-----------------------------------------------------------

class GetFrontiersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFrontiersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFrontiersRequest
    let len;
    let data = new GetFrontiersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbe3002_turtle06/GetFrontiersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFrontiersRequest(null);
    return resolved;
    }
};

class GetFrontiersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontier_cells = null;
    }
    else {
      if (initObj.hasOwnProperty('frontier_cells')) {
        this.frontier_cells = initObj.frontier_cells
      }
      else {
        this.frontier_cells = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFrontiersResponse
    // Serialize message field [frontier_cells]
    // Serialize the length for message field [frontier_cells]
    bufferOffset = _serializer.uint32(obj.frontier_cells.length, buffer, bufferOffset);
    obj.frontier_cells.forEach((val) => {
      bufferOffset = FrontierMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFrontiersResponse
    let len;
    let data = new GetFrontiersResponse(null);
    // Deserialize message field [frontier_cells]
    // Deserialize array length for message field [frontier_cells]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frontier_cells = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frontier_cells[i] = FrontierMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.frontier_cells.forEach((val) => {
      length += FrontierMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbe3002_turtle06/GetFrontiersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6129dd59a1e4fe58cd44208589e088ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    FrontierMsg[] frontier_cells
    
    ================================================================================
    MSG: rbe3002_turtle06/FrontierMsg
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
    const resolved = new GetFrontiersResponse(null);
    if (msg.frontier_cells !== undefined) {
      resolved.frontier_cells = new Array(msg.frontier_cells.length);
      for (let i = 0; i < resolved.frontier_cells.length; ++i) {
        resolved.frontier_cells[i] = FrontierMsg.Resolve(msg.frontier_cells[i]);
      }
    }
    else {
      resolved.frontier_cells = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetFrontiersRequest,
  Response: GetFrontiersResponse,
  md5sum() { return '6129dd59a1e4fe58cd44208589e088ed'; },
  datatype() { return 'rbe3002_turtle06/GetFrontiers'; }
};
