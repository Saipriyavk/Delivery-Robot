; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude IsTerminalState-request.msg.html

(cl:defclass <IsTerminalState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass IsTerminalState-request (<IsTerminalState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsTerminalState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsTerminalState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<IsTerminalState-request> is deprecated: use cse571_project-srv:IsTerminalState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <IsTerminalState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:state-val is deprecated.  Use cse571_project-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsTerminalState-request>) ostream)
  "Serializes a message object of type '<IsTerminalState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsTerminalState-request>) istream)
  "Deserializes a message object of type '<IsTerminalState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsTerminalState-request>)))
  "Returns string type for a service object of type '<IsTerminalState-request>"
  "cse571_project/IsTerminalStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsTerminalState-request)))
  "Returns string type for a service object of type 'IsTerminalState-request"
  "cse571_project/IsTerminalStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsTerminalState-request>)))
  "Returns md5sum for a message object of type '<IsTerminalState-request>"
  "f7b1a4100171db94609b126295dd4151")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsTerminalState-request)))
  "Returns md5sum for a message object of type 'IsTerminalState-request"
  "f7b1a4100171db94609b126295dd4151")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsTerminalState-request>)))
  "Returns full string definition for message of type '<IsTerminalState-request>"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsTerminalState-request)))
  "Returns full string definition for message of type 'IsTerminalState-request"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsTerminalState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsTerminalState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsTerminalState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude IsTerminalState-response.msg.html

(cl:defclass <IsTerminalState-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass IsTerminalState-response (<IsTerminalState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsTerminalState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsTerminalState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<IsTerminalState-response> is deprecated: use cse571_project-srv:IsTerminalState-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <IsTerminalState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:value-val is deprecated.  Use cse571_project-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsTerminalState-response>) ostream)
  "Serializes a message object of type '<IsTerminalState-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsTerminalState-response>) istream)
  "Deserializes a message object of type '<IsTerminalState-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsTerminalState-response>)))
  "Returns string type for a service object of type '<IsTerminalState-response>"
  "cse571_project/IsTerminalStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsTerminalState-response)))
  "Returns string type for a service object of type 'IsTerminalState-response"
  "cse571_project/IsTerminalStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsTerminalState-response>)))
  "Returns md5sum for a message object of type '<IsTerminalState-response>"
  "f7b1a4100171db94609b126295dd4151")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsTerminalState-response)))
  "Returns md5sum for a message object of type 'IsTerminalState-response"
  "f7b1a4100171db94609b126295dd4151")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsTerminalState-response>)))
  "Returns full string definition for message of type '<IsTerminalState-response>"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsTerminalState-response)))
  "Returns full string definition for message of type 'IsTerminalState-response"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsTerminalState-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsTerminalState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsTerminalState-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsTerminalState)))
  'IsTerminalState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsTerminalState)))
  'IsTerminalState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsTerminalState)))
  "Returns string type for a service object of type '<IsTerminalState>"
  "cse571_project/IsTerminalState")