;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::IsTerminalState)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'IsTerminalState (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::ISTERMINALSTATE")
  (make-package "CSE571_PROJECT::ISTERMINALSTATE"))
(unless (find-package "CSE571_PROJECT::ISTERMINALSTATEREQUEST")
  (make-package "CSE571_PROJECT::ISTERMINALSTATEREQUEST"))
(unless (find-package "CSE571_PROJECT::ISTERMINALSTATERESPONSE")
  (make-package "CSE571_PROJECT::ISTERMINALSTATERESPONSE"))

(in-package "ROS")





(defclass cse571_project::IsTerminalStateRequest
  :super ros::object
  :slots (_state ))

(defmethod cse571_project::IsTerminalStateRequest
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

(defclass cse571_project::IsTerminalStateResponse
  :super ros::object
  :slots (_value ))

(defmethod cse571_project::IsTerminalStateResponse
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cse571_project::IsTerminalState
  :super ros::object
  :slots ())

(setf (get cse571_project::IsTerminalState :md5sum-) "f7b1a4100171db94609b126295dd4151")
(setf (get cse571_project::IsTerminalState :datatype-) "cse571_project/IsTerminalState")
(setf (get cse571_project::IsTerminalState :request) cse571_project::IsTerminalStateRequest)
(setf (get cse571_project::IsTerminalState :response) cse571_project::IsTerminalStateResponse)

(defmethod cse571_project::IsTerminalStateRequest
  (:response () (instance cse571_project::IsTerminalStateResponse :init)))

(setf (get cse571_project::IsTerminalStateRequest :md5sum-) "f7b1a4100171db94609b126295dd4151")
(setf (get cse571_project::IsTerminalStateRequest :datatype-) "cse571_project/IsTerminalStateRequest")
(setf (get cse571_project::IsTerminalStateRequest :definition-)
      "string state
---
int32 value
")

(setf (get cse571_project::IsTerminalStateResponse :md5sum-) "f7b1a4100171db94609b126295dd4151")
(setf (get cse571_project::IsTerminalStateResponse :datatype-) "cse571_project/IsTerminalStateResponse")
(setf (get cse571_project::IsTerminalStateResponse :definition-)
      "string state
---
int32 value
")



(provide :cse571_project/IsTerminalState "f7b1a4100171db94609b126295dd4151")


