; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude GetPossibleActions-request.msg.html

(cl:defclass <GetPossibleActions-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass GetPossibleActions-request (<GetPossibleActions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPossibleActions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPossibleActions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetPossibleActions-request> is deprecated: use cse571_project-srv:GetPossibleActions-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetPossibleActions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:state-val is deprecated.  Use cse571_project-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPossibleActions-request>) ostream)
  "Serializes a message object of type '<GetPossibleActions-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPossibleActions-request>) istream)
  "Deserializes a message object of type '<GetPossibleActions-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPossibleActions-request>)))
  "Returns string type for a service object of type '<GetPossibleActions-request>"
  "cse571_project/GetPossibleActionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPossibleActions-request)))
  "Returns string type for a service object of type 'GetPossibleActions-request"
  "cse571_project/GetPossibleActionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPossibleActions-request>)))
  "Returns md5sum for a message object of type '<GetPossibleActions-request>"
  "6b2bdb080846c43b9c1353f9cdd5a8a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPossibleActions-request)))
  "Returns md5sum for a message object of type 'GetPossibleActions-request"
  "6b2bdb080846c43b9c1353f9cdd5a8a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPossibleActions-request>)))
  "Returns full string definition for message of type '<GetPossibleActions-request>"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPossibleActions-request)))
  "Returns full string definition for message of type 'GetPossibleActions-request"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPossibleActions-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPossibleActions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPossibleActions-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude GetPossibleActions-response.msg.html

(cl:defclass <GetPossibleActions-response> (roslisp-msg-protocol:ros-message)
  ((actions
    :reader actions
    :initarg :actions
    :type cl:string
    :initform ""))
)

(cl:defclass GetPossibleActions-response (<GetPossibleActions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPossibleActions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPossibleActions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetPossibleActions-response> is deprecated: use cse571_project-srv:GetPossibleActions-response instead.")))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <GetPossibleActions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:actions-val is deprecated.  Use cse571_project-srv:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPossibleActions-response>) ostream)
  "Serializes a message object of type '<GetPossibleActions-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPossibleActions-response>) istream)
  "Deserializes a message object of type '<GetPossibleActions-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actions) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actions) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPossibleActions-response>)))
  "Returns string type for a service object of type '<GetPossibleActions-response>"
  "cse571_project/GetPossibleActionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPossibleActions-response)))
  "Returns string type for a service object of type 'GetPossibleActions-response"
  "cse571_project/GetPossibleActionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPossibleActions-response>)))
  "Returns md5sum for a message object of type '<GetPossibleActions-response>"
  "6b2bdb080846c43b9c1353f9cdd5a8a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPossibleActions-response)))
  "Returns md5sum for a message object of type 'GetPossibleActions-response"
  "6b2bdb080846c43b9c1353f9cdd5a8a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPossibleActions-response>)))
  "Returns full string definition for message of type '<GetPossibleActions-response>"
  (cl:format cl:nil "string actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPossibleActions-response)))
  "Returns full string definition for message of type 'GetPossibleActions-response"
  (cl:format cl:nil "string actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPossibleActions-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'actions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPossibleActions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPossibleActions-response
    (cl:cons ':actions (actions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPossibleActions)))
  'GetPossibleActions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPossibleActions)))
  'GetPossibleActions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPossibleActions)))
  "Returns string type for a service object of type '<GetPossibleActions>"
  "cse571_project/GetPossibleActions")