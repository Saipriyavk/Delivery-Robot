// Auto-generated. Do not edit!

// (in-package cse571_project.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetRewardRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.action = null;
      this.next_state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('next_state')) {
        this.next_state = initObj.next_state
      }
      else {
        this.next_state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRewardRequest
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [next_state]
    bufferOffset = _serializer.string(obj.next_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRewardRequest
    let len;
    let data = new GetRewardRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [next_state]
    data.next_state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.action.length;
    length += object.next_state.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/GetRewardRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '043888acf566c2cb162009a1eecb8ff0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state
    string action
    string next_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRewardRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.next_state !== undefined) {
      resolved.next_state = msg.next_state;
    }
    else {
      resolved.next_state = ''
    }

    return resolved;
    }
};

class GetRewardResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reward = null;
    }
    else {
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRewardResponse
    // Serialize message field [reward]
    bufferOffset = _serializer.float64(obj.reward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRewardResponse
    let len;
    let data = new GetRewardResponse(null);
    // Deserialize message field [reward]
    data.reward = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/GetRewardResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '771556160cdcd4a7d44d50647196f540';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 reward
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRewardResponse(null);
    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRewardRequest,
  Response: GetRewardResponse,
  md5sum() { return '5db7b1f3b0b303c537d7253bf7a2c047'; },
  datatype() { return 'cse571_project/GetReward'; }
};
