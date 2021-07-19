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

class GetPossibleActionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPossibleActionsRequest
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPossibleActionsRequest
    let len;
    let data = new GetPossibleActionsRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/GetPossibleActionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af6d3a99f0fbeb66d3248fa4b3e675fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPossibleActionsRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    return resolved;
    }
};

class GetPossibleActionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPossibleActionsResponse
    // Serialize message field [actions]
    bufferOffset = _serializer.string(obj.actions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPossibleActionsResponse
    let len;
    let data = new GetPossibleActionsResponse(null);
    // Deserialize message field [actions]
    data.actions = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.actions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/GetPossibleActionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '736c654215c18c9e1fa35bdcf5f22ffa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string actions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPossibleActionsResponse(null);
    if (msg.actions !== undefined) {
      resolved.actions = msg.actions;
    }
    else {
      resolved.actions = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPossibleActionsRequest,
  Response: GetPossibleActionsResponse,
  md5sum() { return '6b2bdb080846c43b9c1353f9cdd5a8a5'; },
  datatype() { return 'cse571_project/GetPossibleActions'; }
};
