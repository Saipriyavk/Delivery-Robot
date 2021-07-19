;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::GetInitialState)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'GetInitialState (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::GETINITIALSTATE")
  (make-package "CSE571_PROJECT::GETINITIALSTATE"))
(unless (find-package "CSE571_PROJECT::GETINITIALSTATEREQUEST")
  (make-package "CSE571_PROJECT::GETINITIALSTATEREQUEST"))
(unless (find-package "CSE571_PROJECT::GETINITIALSTATERESPONSE")
  (make-package "CSE571_PROJECT::GETINITIALSTATERESPONSE"))

(in-package "ROS")





(defclass cse571_project::GetInitialStateRequest
  :super ros::object
  :slots ())

(defmethod cse571_project::GetInitialStateRequest
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

(defclass cse571_project::GetInitialStateResponse
  :super ros::object
  :slots (_state ))

(defmethod cse571_project::GetInitialStateResponse
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::GetInitialState
  :super ros::object
  :slots ())

(setf (get cse571_project::GetInitialState :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get cse571_project::GetInitialState :datatype-) "cse571_project/GetInitialState")
(setf (get cse571_project::GetInitialState :request) cse571_project::GetInitialStateRequest)
(setf (get cse571_project::GetInitialState :response) cse571_project::GetInitialStateResponse)

(defmethod cse571_project::GetInitialStateRequest
  (:response () (instance cse571_project::GetInitialStateResponse :init)))

(setf (get cse571_project::GetInitialStateRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get cse571_project::GetInitialStateRequest :datatype-) "cse571_project/GetInitialStateRequest")
(setf (get cse571_project::GetInitialStateRequest :definition-)
      "---
string state
")

(setf (get cse571_project::GetInitialStateResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get cse571_project::GetInitialStateResponse :datatype-) "cse571_project/GetInitialStateResponse")
(setf (get cse571_project::GetInitialStateResponse :definition-)
      "---
string state
")



(provide :cse571_project/GetInitialState "af6d3a99f0fbeb66d3248fa4b3e675fb")


