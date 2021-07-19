; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude ActionMsg-request.msg.html

(cl:defclass <ActionMsg-request> (roslisp-msg-protocol:ros-message)
  ((action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform "")
   (action_params
    :reader action_params
    :initarg :action_params
    :type cl:string
    :initform ""))
)

(cl:defclass ActionMsg-request (<ActionMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<ActionMsg-request> is deprecated: use cse571_project-srv:ActionMsg-request instead.")))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <ActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:action_name-val is deprecated.  Use cse571_project-srv:action_name instead.")
  (action_name m))

(cl:ensure-generic-function 'action_params-val :lambda-list '(m))
(cl:defmethod action_params-val ((m <ActionMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:action_params-val is deprecated.  Use cse571_project-srv:action_params instead.")
  (action_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionMsg-request>) ostream)
  "Serializes a message object of type '<ActionMsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionMsg-request>) istream)
  "Deserializes a message object of type '<ActionMsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionMsg-request>)))
  "Returns string type for a service object of type '<ActionMsg-request>"
  "cse571_project/ActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionMsg-request)))
  "Returns string type for a service object of type 'ActionMsg-request"
  "cse571_project/ActionMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionMsg-request>)))
  "Returns md5sum for a message object of type '<ActionMsg-request>"
  "dfdaf84421aa9323fca0ea8f7917a197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionMsg-request)))
  "Returns md5sum for a message object of type 'ActionMsg-request"
  "dfdaf84421aa9323fca0ea8f7917a197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionMsg-request>)))
  "Returns full string definition for message of type '<ActionMsg-request>"
  (cl:format cl:nil "string action_name~%string action_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionMsg-request)))
  "Returns full string definition for message of type 'ActionMsg-request"
  (cl:format cl:nil "string action_name~%string action_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_name))
     4 (cl:length (cl:slot-value msg 'action_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionMsg-request
    (cl:cons ':action_name (action_name msg))
    (cl:cons ':action_params (action_params msg))
))
;//! \htmlinclude ActionMsg-response.msg.html

(cl:defclass <ActionMsg-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:float
    :initform 0.0)
   (next_state
    :reader next_state
    :initarg :next_state
    :type cl:string
    :initform ""))
)

(cl:defclass ActionMsg-response (<ActionMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<ActionMsg-response> is deprecated: use cse571_project-srv:ActionMsg-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ActionMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:success-val is deprecated.  Use cse571_project-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'next_state-val :lambda-list '(m))
(cl:defmethod next_state-val ((m <ActionMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:next_state-val is deprecated.  Use cse571_project-srv:next_state instead.")
  (next_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionMsg-response>) ostream)
  "Serializes a message object of type '<ActionMsg-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'success))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'next_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'next_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionMsg-response>) istream)
  "Deserializes a message object of type '<ActionMsg-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionMsg-response>)))
  "Returns string type for a service object of type '<ActionMsg-response>"
  "cse571_project/ActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionMsg-response)))
  "Returns string type for a service object of type 'ActionMsg-response"
  "cse571_project/ActionMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionMsg-response>)))
  "Returns md5sum for a message object of type '<ActionMsg-response>"
  "dfdaf84421aa9323fca0ea8f7917a197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionMsg-response)))
  "Returns md5sum for a message object of type 'ActionMsg-response"
  "dfdaf84421aa9323fca0ea8f7917a197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionMsg-response>)))
  "Returns full string definition for message of type '<ActionMsg-response>"
  (cl:format cl:nil "float64 success~%string next_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionMsg-response)))
  "Returns full string definition for message of type 'ActionMsg-response"
  (cl:format cl:nil "float64 success~%string next_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionMsg-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'next_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionMsg-response
    (cl:cons ':success (success msg))
    (cl:cons ':next_state (next_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActionMsg)))
  'ActionMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActionMsg)))
  'ActionMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionMsg)))
  "Returns string type for a service object of type '<ActionMsg>"
  "cse571_project/ActionMsg")