; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude GetActions-request.msg.html

(cl:defclass <GetActions-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetActions-request (<GetActions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetActions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetActions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetActions-request> is deprecated: use cse571_project-srv:GetActions-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetActions-request>) ostream)
  "Serializes a message object of type '<GetActions-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetActions-request>) istream)
  "Deserializes a message object of type '<GetActions-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetActions-request>)))
  "Returns string type for a service object of type '<GetActions-request>"
  "cse571_project/GetActionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActions-request)))
  "Returns string type for a service object of type 'GetActions-request"
  "cse571_project/GetActionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetActions-request>)))
  "Returns md5sum for a message object of type '<GetActions-request>"
  "736c654215c18c9e1fa35bdcf5f22ffa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetActions-request)))
  "Returns md5sum for a message object of type 'GetActions-request"
  "736c654215c18c9e1fa35bdcf5f22ffa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetActions-request>)))
  "Returns full string definition for message of type '<GetActions-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetActions-request)))
  "Returns full string definition for message of type 'GetActions-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetActions-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetActions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetActions-request
))
;//! \htmlinclude GetActions-response.msg.html

(cl:defclass <GetActions-response> (roslisp-msg-protocol:ros-message)
  ((actions
    :reader actions
    :initarg :actions
    :type cl:string
    :initform ""))
)

(cl:defclass GetActions-response (<GetActions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetActions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetActions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetActions-response> is deprecated: use cse571_project-srv:GetActions-response instead.")))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <GetActions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:actions-val is deprecated.  Use cse571_project-srv:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetActions-response>) ostream)
  "Serializes a message object of type '<GetActions-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetActions-response>) istream)
  "Deserializes a message object of type '<GetActions-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetActions-response>)))
  "Returns string type for a service object of type '<GetActions-response>"
  "cse571_project/GetActionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActions-response)))
  "Returns string type for a service object of type 'GetActions-response"
  "cse571_project/GetActionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetActions-response>)))
  "Returns md5sum for a message object of type '<GetActions-response>"
  "736c654215c18c9e1fa35bdcf5f22ffa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetActions-response)))
  "Returns md5sum for a message object of type 'GetActions-response"
  "736c654215c18c9e1fa35bdcf5f22ffa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetActions-response>)))
  "Returns full string definition for message of type '<GetActions-response>"
  (cl:format cl:nil "string actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetActions-response)))
  "Returns full string definition for message of type 'GetActions-response"
  (cl:format cl:nil "string actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetActions-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'actions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetActions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetActions-response
    (cl:cons ':actions (actions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetActions)))
  'GetActions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetActions)))
  'GetActions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActions)))
  "Returns string type for a service object of type '<GetActions>"
  "cse571_project/GetActions")