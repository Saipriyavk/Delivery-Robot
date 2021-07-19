; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude CheckEdge-request.msg.html

(cl:defclass <CheckEdge-request> (roslisp-msg-protocol:ros-message)
  ((x1
    :reader x1
    :initarg :x1
    :type cl:float
    :initform 0.0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:float
    :initform 0.0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:float
    :initform 0.0)
   (y2
    :reader y2
    :initarg :y2
    :type cl:float
    :initform 0.0))
)

(cl:defclass CheckEdge-request (<CheckEdge-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckEdge-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckEdge-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<CheckEdge-request> is deprecated: use cse571_project-srv:CheckEdge-request instead.")))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <CheckEdge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:x1-val is deprecated.  Use cse571_project-srv:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <CheckEdge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:y1-val is deprecated.  Use cse571_project-srv:y1 instead.")
  (y1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <CheckEdge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:x2-val is deprecated.  Use cse571_project-srv:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'y2-val :lambda-list '(m))
(cl:defmethod y2-val ((m <CheckEdge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:y2-val is deprecated.  Use cse571_project-srv:y2 instead.")
  (y2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckEdge-request>) ostream)
  "Serializes a message object of type '<CheckEdge-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckEdge-request>) istream)
  "Deserializes a message object of type '<CheckEdge-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckEdge-request>)))
  "Returns string type for a service object of type '<CheckEdge-request>"
  "cse571_project/CheckEdgeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckEdge-request)))
  "Returns string type for a service object of type 'CheckEdge-request"
  "cse571_project/CheckEdgeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckEdge-request>)))
  "Returns md5sum for a message object of type '<CheckEdge-request>"
  "1ad13511a24e6f2f7882cfab4c1f2f18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckEdge-request)))
  "Returns md5sum for a message object of type 'CheckEdge-request"
  "1ad13511a24e6f2f7882cfab4c1f2f18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckEdge-request>)))
  "Returns full string definition for message of type '<CheckEdge-request>"
  (cl:format cl:nil "float32 x1~%float32 y1~%float32 x2~%float32 y2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckEdge-request)))
  "Returns full string definition for message of type 'CheckEdge-request"
  (cl:format cl:nil "float32 x1~%float32 y1~%float32 x2~%float32 y2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckEdge-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckEdge-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckEdge-request
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':y2 (y2 msg))
))
;//! \htmlinclude CheckEdge-response.msg.html

(cl:defclass <CheckEdge-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass CheckEdge-response (<CheckEdge-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckEdge-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckEdge-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<CheckEdge-response> is deprecated: use cse571_project-srv:CheckEdge-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CheckEdge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:value-val is deprecated.  Use cse571_project-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckEdge-response>) ostream)
  "Serializes a message object of type '<CheckEdge-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckEdge-response>) istream)
  "Deserializes a message object of type '<CheckEdge-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckEdge-response>)))
  "Returns string type for a service object of type '<CheckEdge-response>"
  "cse571_project/CheckEdgeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckEdge-response)))
  "Returns string type for a service object of type 'CheckEdge-response"
  "cse571_project/CheckEdgeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckEdge-response>)))
  "Returns md5sum for a message object of type '<CheckEdge-response>"
  "1ad13511a24e6f2f7882cfab4c1f2f18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckEdge-response)))
  "Returns md5sum for a message object of type 'CheckEdge-response"
  "1ad13511a24e6f2f7882cfab4c1f2f18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckEdge-response>)))
  "Returns full string definition for message of type '<CheckEdge-response>"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckEdge-response)))
  "Returns full string definition for message of type 'CheckEdge-response"
  (cl:format cl:nil "int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckEdge-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckEdge-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckEdge-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckEdge)))
  'CheckEdge-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckEdge)))
  'CheckEdge-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckEdge)))
  "Returns string type for a service object of type '<CheckEdge>"
  "cse571_project/CheckEdge")