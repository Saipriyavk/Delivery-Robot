; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude GetReward-request.msg.html

(cl:defclass <GetReward-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (next_state
    :reader next_state
    :initarg :next_state
    :type cl:string
    :initform ""))
)

(cl:defclass GetReward-request (<GetReward-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetReward-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetReward-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetReward-request> is deprecated: use cse571_project-srv:GetReward-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetReward-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:state-val is deprecated.  Use cse571_project-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <GetReward-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:action-val is deprecated.  Use cse571_project-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'next_state-val :lambda-list '(m))
(cl:defmethod next_state-val ((m <GetReward-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:next_state-val is deprecated.  Use cse571_project-srv:next_state instead.")
  (next_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetReward-request>) ostream)
  "Serializes a message object of type '<GetReward-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'next_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'next_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetReward-request>) istream)
  "Deserializes a message object of type '<GetReward-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'next_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetReward-request>)))
  "Returns string type for a service object of type '<GetReward-request>"
  "cse571_project/GetRewardRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetReward-request)))
  "Returns string type for a service object of type 'GetReward-request"
  "cse571_project/GetRewardRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetReward-request>)))
  "Returns md5sum for a message object of type '<GetReward-request>"
  "5db7b1f3b0b303c537d7253bf7a2c047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetReward-request)))
  "Returns md5sum for a message object of type 'GetReward-request"
  "5db7b1f3b0b303c537d7253bf7a2c047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetReward-request>)))
  "Returns full string definition for message of type '<GetReward-request>"
  (cl:format cl:nil "string state~%string action~%string next_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetReward-request)))
  "Returns full string definition for message of type 'GetReward-request"
  (cl:format cl:nil "string state~%string action~%string next_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetReward-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'next_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetReward-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetReward-request
    (cl:cons ':state (state msg))
    (cl:cons ':action (action msg))
    (cl:cons ':next_state (next_state msg))
))
;//! \htmlinclude GetReward-response.msg.html

(cl:defclass <GetReward-response> (roslisp-msg-protocol:ros-message)
  ((reward
    :reader reward
    :initarg :reward
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetReward-response (<GetReward-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetReward-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetReward-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetReward-response> is deprecated: use cse571_project-srv:GetReward-response instead.")))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <GetReward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:reward-val is deprecated.  Use cse571_project-srv:reward instead.")
  (reward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetReward-response>) ostream)
  "Serializes a message object of type '<GetReward-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetReward-response>) istream)
  "Deserializes a message object of type '<GetReward-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reward) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetReward-response>)))
  "Returns string type for a service object of type '<GetReward-response>"
  "cse571_project/GetRewardResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetReward-response)))
  "Returns string type for a service object of type 'GetReward-response"
  "cse571_project/GetRewardResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetReward-response>)))
  "Returns md5sum for a message object of type '<GetReward-response>"
  "5db7b1f3b0b303c537d7253bf7a2c047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetReward-response)))
  "Returns md5sum for a message object of type 'GetReward-response"
  "5db7b1f3b0b303c537d7253bf7a2c047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetReward-response>)))
  "Returns full string definition for message of type '<GetReward-response>"
  (cl:format cl:nil "float64 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetReward-response)))
  "Returns full string definition for message of type 'GetReward-response"
  (cl:format cl:nil "float64 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetReward-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetReward-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetReward-response
    (cl:cons ':reward (reward msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetReward)))
  'GetReward-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetReward)))
  'GetReward-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetReward)))
  "Returns string type for a service object of type '<GetReward>"
  "cse571_project/GetReward")