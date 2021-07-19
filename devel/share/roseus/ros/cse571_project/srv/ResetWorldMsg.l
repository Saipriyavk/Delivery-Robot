;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::ResetWorldMsg)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'ResetWorldMsg (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::RESETWORLDMSG")
  (make-package "CSE571_PROJECT::RESETWORLDMSG"))
(unless (find-package "CSE571_PROJECT::RESETWORLDMSGREQUEST")
  (make-package "CSE571_PROJECT::RESETWORLDMSGREQUEST"))
(unless (find-package "CSE571_PROJECT::RESETWORLDMSGRESPONSE")
  (make-package "CSE571_PROJECT::RESETWORLDMSGRESPONSE"))

(in-package "ROS")





(defclass cse571_project::ResetWorldMsgRequest
  :super ros::object
  :slots ())

(defmethod cse571_project::ResetWorldMsgRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cse571_project::ResetWorldMsgResponse
  :super ros::object
  :slots (_success ))

(defmethod cse571_project::ResetWorldMsgResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cse571_project::ResetWorldMsg
  :super ros::object
  :slots ())

(setf (get cse571_project::ResetWorldMsg :md5sum-) "3c2bcf2ff0894cb3058b1bf4c8c4175a")
(setf (get cse571_project::ResetWorldMsg :datatype-) "cse571_project/ResetWorldMsg")
(setf (get cse571_project::ResetWorldMsg :request) cse571_project::ResetWorldMsgRequest)
(setf (get cse571_project::ResetWorldMsg :response) cse571_project::ResetWorldMsgResponse)

(defmethod cse571_project::ResetWorldMsgRequest
  (:response () (instance cse571_project::ResetWorldMsgResponse :init)))

(setf (get cse571_project::ResetWorldMsgRequest :md5sum-) "3c2bcf2ff0894cb3058b1bf4c8c4175a")
(setf (get cse571_project::ResetWorldMsgRequest :datatype-) "cse571_project/ResetWorldMsgRequest")
(setf (get cse571_project::ResetWorldMsgRequest :definition-)
      "---
int32 success
")

(setf (get cse571_project::ResetWorldMsgResponse :md5sum-) "3c2bcf2ff0894cb3058b1bf4c8c4175a")
(setf (get cse571_project::ResetWorldMsgResponse :datatype-) "cse571_project/ResetWorldMsgResponse")
(setf (get cse571_project::ResetWorldMsgResponse :definition-)
      "---
int32 success
")



(provide :cse571_project/ResetWorldMsg "3c2bcf2ff0894cb3058b1bf4c8c4175a")


