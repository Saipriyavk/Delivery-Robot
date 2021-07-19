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

class GetPossibleStatesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.action = null;
      this.action_params = null;
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
      if (initObj.hasOwnProperty('action_params')) {
        this.action_params = initObj.action_params
      }
      else {
        this.action_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPossibleStatesRequest
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [action_params]
    bufferOffset = _serializer.string(obj.action_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPossibleStatesRequest
    let len;
    let data = new GetPossibleStatesRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_params]
    data.action_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.action.length;
    length += object.action_params.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/GetPossibleStatesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78b5a85748721977039218845b33215e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state
    string action
    string action_params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPossibleStatesRequest(null);
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

    if (msg.action_params !== undefined) {
      resolved.action_params = msg.action_params;
    }
    else {
      resolved.action_params = ''
    }

    return resolved;
    }
};

class GetPossibleStatesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPossibleStatesResponse
    // Serialize message field [states]
    bufferOffset = _serializer.string(obj.states, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPossibleStatesResponse
    let len;
    let data = new GetPossibleStatesResponse(null);
    // Deserialize message field [states]
    data.states = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.states.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/GetPossibleStatesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cae2b92d94fc69250c1e8359b2150a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string states
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPossibleStatesResponse(null);
    if (msg.states !== undefined) {
      resolved.states = msg.states;
    }
    else {
      resolved.states = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPossibleStatesRequest,
  Response: GetPossibleStatesResponse,
  md5sum() { return 'ad5e6ede9037ccf3c74ff16323c7ca34'; },
  datatype() { return 'cse571_project/GetPossibleStates'; }
};
