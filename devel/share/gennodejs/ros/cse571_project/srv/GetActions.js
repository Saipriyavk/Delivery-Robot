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

class GetActionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetActionsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetActionsRequest
    let len;
    let data = new GetActionsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cse571_project/GetActionsRequest';
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
    const resolved = new GetActionsRequest(null);
    return resolved;
    }
};

class GetActionsResponse {
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
    // Serializes a message object of type GetActionsResponse
    // Serialize message field [actions]
    bufferOffset = _serializer.string(obj.actions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetActionsResponse
    let len;
    let data = new GetActionsResponse(null);
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
    return 'cse571_project/GetActionsResponse';
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
    const resolved = new GetActionsResponse(null);
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
  Request: GetActionsRequest,
  Response: GetActionsResponse,
  md5sum() { return '736c654215c18c9e1fa35bdcf5f22ffa'; },
  datatype() { return 'cse571_project/GetActions'; }
};
