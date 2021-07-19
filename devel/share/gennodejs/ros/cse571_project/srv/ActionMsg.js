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

class ActionMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_name = null;
      this.action_params = null;
    }
    else {
      if (initObj.hasOwnProperty('action_name')) {
        this.action_name = initObj.action_name
      }
      else {
        this.action_name = '';
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
    // Serializes a message object of type ActionMsgRequest
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    // Serialize message field [action_params]
    bufferOffset = _serializer.string(obj.action_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionMsgRequest
    let len;
    let data = new ActionMsgRequest(null);
    // Deserialize message field [action_name]
    data.action_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_params]
    data.action_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.action_name.length;
    length += object.action_params.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/ActionMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79e3727fb88b31e25d3fbab40933bcc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string action_name
    string action_params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionMsgRequest(null);
    if (msg.action_name !== undefined) {
      resolved.action_name = msg.action_name;
    }
    else {
      resolved.action_name = ''
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

class ActionMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.next_state = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0.0;
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
    // Serializes a message object of type ActionMsgResponse
    // Serialize message field [success]
    bufferOffset = _serializer.float64(obj.success, buffer, bufferOffset);
    // Serialize message field [next_state]
    bufferOffset = _serializer.string(obj.next_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionMsgResponse
    let len;
    let data = new ActionMsgResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [next_state]
    data.next_state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.next_state.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/ActionMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74c0e6726e6a0baca44bcb73b0cc23aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 success
    string next_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionMsgResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0.0
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

module.exports = {
  Request: ActionMsgRequest,
  Response: ActionMsgResponse,
  md5sum() { return 'dfdaf84421aa9323fca0ea8f7917a197'; },
  datatype() { return 'cse571_project/ActionMsg'; }
};
