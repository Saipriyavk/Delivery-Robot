; Auto-generated. Do not edit!


(cl:in-package cse571_project-srv)


;//! \htmlinclude ResetWorldMsg-request.msg.html

(cl:defclass <ResetWorldMsg-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetWorldMsg-request (<ResetWorldMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetWorldMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetWorldMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<ResetWorldMsg-request> is deprecated: use cse571_project-srv:ResetWorldMsg-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetWorldMsg-request>) ostream)
  "Serializes a message object of type '<ResetWorldMsg-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetWorldMsg-request>) istream)
  "Deserializes a message object of type '<ResetWorldMsg-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetWorldMsg-request>)))
  "Returns string type for a service object of type '<ResetWorldMsg-request>"
  "cse571_project/ResetWorldMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetWorldMsg-request)))
  "Returns string type for a service object of type 'ResetWorldMsg-request"
  "cse571_project/ResetWorldMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetWorldMsg-request>)))
  "Returns md5sum for a message object of type '<ResetWorldMsg-request>"
  "3c2bcf2ff0894cb3058b1bf4c8c4175a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetWorldMsg-request)))
  "Returns md5sum for a message object of type 'ResetWorldMsg-request"
  "3c2bcf2ff0894cb3058b1bf4c8c4175a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetWorldMsg-request>)))
  "Returns full string definition for message of type '<ResetWorldMsg-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetWorldMsg-request)))
  "Returns full string definition for message of type 'ResetWorldMsg-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetWorldMsg-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetWorldMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetWorldMsg-request
))
;//! \htmlinclude ResetWorldMsg-response.msg.html

(cl:defclass <ResetWorldMsg-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetWorldMsg-response (<ResetWorldMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetWorldMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetWorldMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cse571_project-srv:<ResetWorldMsg-response> is deprecated: use cse571_project-srv:ResetWorldMsg-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetWorldMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cse571_project-srv:success-val is deprecated.  Use cse571_project-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetWorldMsg-response>) ostream)
  "Serializes a message object of type '<ResetWorldMsg-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetWorldMsg-response>) istream)
  "Deserializes a message object of type '<ResetWorldMsg-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetWorldMsg-response>)))
  "Returns string type for a service object of type '<ResetWorldMsg-response>"
  "cse571_project/ResetWorldMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetWorldMsg-response)))
  "Returns string type for a service object of type 'ResetWorldMsg-response"
  "cse571_project/ResetWorldMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetWorldMsg-response>)))
  "Returns md5sum for a message object of type '<ResetWorldMsg-response>"
  "3c2bcf2ff0894cb3058b1bf4c8c4175a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetWorldMsg-response)))
  "Returns md5sum for a message object of type 'ResetWorldMsg-response"
  "3c2bcf2ff0894cb3058b1bf4c8c4175a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetWorldMsg-response>)))
  "Returns full string definition for message of type '<ResetWorldMsg-response>"
  (cl:format cl:nil "int32 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetWorldMsg-response)))
  "Returns full string definition for message of type 'ResetWorldMsg-response"
  (cl:format cl:nil "int32 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetWorldMsg-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetWorldMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetWorldMsg-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetWorldMsg)))
  'ResetWorldMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetWorldMsg)))
  'ResetWorldMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetWorldMsg)))
  "Returns string type for a service object of type '<ResetWorldMsg>"
  "cse571_project/ResetWorldMsg")