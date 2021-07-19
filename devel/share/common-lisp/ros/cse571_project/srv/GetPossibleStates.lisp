; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude GetPossibleStates-request.msg.html

(cl:defclass <GetPossibleStates-request> (roslisp-msg-protocol:ros-message)
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
   (action_params
    :reader action_params
    :initarg :action_params
    :type cl:string
    :initform ""))
)

(cl:defclass GetPossibleStates-request (<GetPossibleStates-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPossibleStates-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPossibleStates-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetPossibleStates-request> is deprecated: use cse571_project-srv:GetPossibleStates-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetPossibleStates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:state-val is deprecated.  Use cse571_project-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <GetPossibleStates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:action-val is deprecated.  Use cse571_project-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'action_params-val :lambda-list '(m))
(cl:defmethod action_params-val ((m <GetPossibleStates-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:action_params-val is deprecated.  Use cse571_project-srv:action_params instead.")
  (action_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPossibleStates-request>) ostream)
  "Serializes a message object of type '<GetPossibleStates-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPossibleStates-request>) istream)
  "Deserializes a message object of type '<GetPossibleStates-request>"
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
      (cl:setf (cl:slot-value msg 'action_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPossibleStates-request>)))
  "Returns string type for a service object of type '<GetPossibleStates-request>"
  "cse571_project/GetPossibleStatesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPossibleStates-request)))
  "Returns string type for a service object of type 'GetPossibleStates-request"
  "cse571_project/GetPossibleStatesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPossibleStates-request>)))
  "Returns md5sum for a message object of type '<GetPossibleStates-request>"
  "ad5e6ede9037ccf3c74ff16323c7ca34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPossibleStates-request)))
  "Returns md5sum for a message object of type 'GetPossibleStates-request"
  "ad5e6ede9037ccf3c74ff16323c7ca34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPossibleStates-request>)))
  "Returns full string definition for message of type '<GetPossibleStates-request>"
  (cl:format cl:nil "string state~%string action~%string action_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPossibleStates-request)))
  "Returns full string definition for message of type 'GetPossibleStates-request"
  (cl:format cl:nil "string state~%string action~%string action_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPossibleStates-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'action_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPossibleStates-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPossibleStates-request
    (cl:cons ':state (state msg))
    (cl:cons ':action (action msg))
    (cl:cons ':action_params (action_params msg))
))
;//! \htmlinclude GetPossibleStates-response.msg.html

(cl:defclass <GetPossibleStates-response> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type cl:string
    :initform ""))
)

(cl:defclass GetPossibleStates-response (<GetPossibleStates-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPossibleStates-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPossibleStates-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetPossibleStates-response> is deprecated: use cse571_project-srv:GetPossibleStates-response instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <GetPossibleStates-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:states-val is deprecated.  Use cse571_project-srv:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPossibleStates-response>) ostream)
  "Serializes a message object of type '<GetPossibleStates-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPossibleStates-response>) istream)
  "Deserializes a message object of type '<GetPossibleStates-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'states) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'states) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPossibleStates-response>)))
  "Returns string type for a service object of type '<GetPossibleStates-response>"
  "cse571_project/GetPossibleStatesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPossibleStates-response)))
  "Returns string type for a service object of type 'GetPossibleStates-response"
  "cse571_project/GetPossibleStatesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPossibleStates-response>)))
  "Returns md5sum for a message object of type '<GetPossibleStates-response>"
  "ad5e6ede9037ccf3c74ff16323c7ca34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPossibleStates-response)))
  "Returns md5sum for a message object of type 'GetPossibleStates-response"
  "ad5e6ede9037ccf3c74ff16323c7ca34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPossibleStates-response>)))
  "Returns full string definition for message of type '<GetPossibleStates-response>"
  (cl:format cl:nil "string states~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPossibleStates-response)))
  "Returns full string definition for message of type 'GetPossibleStates-response"
  (cl:format cl:nil "string states~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPossibleStates-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'states))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPossibleStates-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPossibleStates-response
    (cl:cons ':states (states msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPossibleStates)))
  'GetPossibleStates-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPossibleStates)))
  'GetPossibleStates-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPossibleStates)))
  "Returns string type for a service object of type '<GetPossibleStates>"
  "cse571_project/GetPossibleStates")