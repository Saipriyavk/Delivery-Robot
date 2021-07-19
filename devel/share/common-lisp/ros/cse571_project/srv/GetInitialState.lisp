; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude GetInitialState-request.msg.html

(cl:defclass <GetInitialState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetInitialState-request (<GetInitialState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInitialState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInitialState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetInitialState-request> is deprecated: use cse571_project-srv:GetInitialState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInitialState-request>) ostream)
  "Serializes a message object of type '<GetInitialState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInitialState-request>) istream)
  "Deserializes a message object of type '<GetInitialState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInitialState-request>)))
  "Returns string type for a service object of type '<GetInitialState-request>"
  "cse571_project/GetInitialStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitialState-request)))
  "Returns string type for a service object of type 'GetInitialState-request"
  "cse571_project/GetInitialStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInitialState-request>)))
  "Returns md5sum for a message object of type '<GetInitialState-request>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInitialState-request)))
  "Returns md5sum for a message object of type 'GetInitialState-request"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInitialState-request>)))
  "Returns full string definition for message of type '<GetInitialState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInitialState-request)))
  "Returns full string definition for message of type 'GetInitialState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInitialState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInitialState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInitialState-request
))
;//! \htmlinclude GetInitialState-response.msg.html

(cl:defclass <GetInitialState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass GetInitialState-response (<GetInitialState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInitialState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInitialState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<GetInitialState-response> is deprecated: use cse571_project-srv:GetInitialState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetInitialState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:state-val is deprecated.  Use cse571_project-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInitialState-response>) ostream)
  "Serializes a message object of type '<GetInitialState-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInitialState-response>) istream)
  "Deserializes a message object of type '<GetInitialState-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInitialState-response>)))
  "Returns string type for a service object of type '<GetInitialState-response>"
  "cse571_project/GetInitialStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitialState-response)))
  "Returns string type for a service object of type 'GetInitialState-response"
  "cse571_project/GetInitialStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInitialState-response>)))
  "Returns md5sum for a message object of type '<GetInitialState-response>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInitialState-response)))
  "Returns md5sum for a message object of type 'GetInitialState-response"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInitialState-response>)))
  "Returns full string definition for message of type '<GetInitialState-response>"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInitialState-response)))
  "Returns full string definition for message of type 'GetInitialState-response"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInitialState-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInitialState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInitialState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInitialState)))
  'GetInitialState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInitialState)))
  'GetInitialState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitialState)))
  "Returns string type for a service object of type '<GetInitialState>"
  "cse571_project/GetInitialState")