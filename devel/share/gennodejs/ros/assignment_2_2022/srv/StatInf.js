// Auto-generated. Do not edit!

// (in-package assignment_2_2022.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StatInfRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatInfRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatInfRequest
    let len;
    let data = new StatInfRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/StatInfRequest';
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
    const resolved = new StatInfRequest(null);
    return resolved;
    }
};

class StatInfResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goalReached = null;
      this.goalCanceled = null;
    }
    else {
      if (initObj.hasOwnProperty('goalReached')) {
        this.goalReached = initObj.goalReached
      }
      else {
        this.goalReached = 0;
      }
      if (initObj.hasOwnProperty('goalCanceled')) {
        this.goalCanceled = initObj.goalCanceled
      }
      else {
        this.goalCanceled = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatInfResponse
    // Serialize message field [goalReached]
    bufferOffset = _serializer.uint32(obj.goalReached, buffer, bufferOffset);
    // Serialize message field [goalCanceled]
    bufferOffset = _serializer.uint32(obj.goalCanceled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatInfResponse
    let len;
    let data = new StatInfResponse(null);
    // Deserialize message field [goalReached]
    data.goalReached = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [goalCanceled]
    data.goalCanceled = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/StatInfResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31c045aed7eae4a99c1b5f5a71d1bdb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 goalReached
    uint32 goalCanceled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatInfResponse(null);
    if (msg.goalReached !== undefined) {
      resolved.goalReached = msg.goalReached;
    }
    else {
      resolved.goalReached = 0
    }

    if (msg.goalCanceled !== undefined) {
      resolved.goalCanceled = msg.goalCanceled;
    }
    else {
      resolved.goalCanceled = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: StatInfRequest,
  Response: StatInfResponse,
  md5sum() { return '31c045aed7eae4a99c1b5f5a71d1bdb1'; },
  datatype() { return 'assignment_2_2022/StatInf'; }
};
