;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::GetPossibleStates)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'GetPossibleStates (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::GETPOSSIBLESTATES")
  (make-package "CSE571_PROJECT::GETPOSSIBLESTATES"))
(unless (find-package "CSE571_PROJECT::GETPOSSIBLESTATESREQUEST")
  (make-package "CSE571_PROJECT::GETPOSSIBLESTATESREQUEST"))
(unless (find-package "CSE571_PROJECT::GETPOSSIBLESTATESRESPONSE")
  (make-package "CSE571_PROJECT::GETPOSSIBLESTATESRESPONSE"))

(in-package "ROS")





(defclass cse571_project::GetPossibleStatesRequest
  :super ros::object
  :slots (_state _action _action_params ))

(defmethod cse571_project::GetPossibleStatesRequest
  (:init
   (&key
    ((:state __state) "")
    ((:action __action) "")
    ((:action_params __action_params) "")
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _action (string __action))
   (setq _action_params (string __action_params))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:action_params
   (&optional __action_params)
   (if __action_params (setq _action_params __action_params)) _action_params)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _action
    4 (length _action)
    ;; string _action_params
    4 (length _action_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _action_params
       (write-long (length _action_params) s) (princ _action_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::GetPossibleStatesResponse
  :super ros::object
  :slots (_states ))

(defmethod cse571_project::GetPossibleStatesResponse
  (:init
   (&key
    ((:states __states) "")
    )
   (send-super :init)
   (setq _states (string __states))
   self)
  (:states
   (&optional __states)
   (if __states (setq _states __states)) _states)
  (:serialization-length
   ()
   (+
    ;; string _states
    4 (length _states)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _states
       (write-long (length _states) s) (princ _states s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _states
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _states (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::GetPossibleStates
  :super ros::object
  :slots ())

(setf (get cse571_project::GetPossibleStates :md5sum-) "ad5e6ede9037ccf3c74ff16323c7ca34")
(setf (get cse571_project::GetPossibleStates :datatype-) "cse571_project/GetPossibleStates")
(setf (get cse571_project::GetPossibleStates :request) cse571_project::GetPossibleStatesRequest)
(setf (get cse571_project::GetPossibleStates :response) cse571_project::GetPossibleStatesResponse)

(defmethod cse571_project::GetPossibleStatesRequest
  (:response () (instance cse571_project::GetPossibleStatesResponse :init)))

(setf (get cse571_project::GetPossibleStatesRequest :md5sum-) "ad5e6ede9037ccf3c74ff16323c7ca34")
(setf (get cse571_project::GetPossibleStatesRequest :datatype-) "cse571_project/GetPossibleStatesRequest")
(setf (get cse571_project::GetPossibleStatesRequest :definition-)
      "string state
string action
string action_params
---
string states
")

(setf (get cse571_project::GetPossibleStatesResponse :md5sum-) "ad5e6ede9037ccf3c74ff16323c7ca34")
(setf (get cse571_project::GetPossibleStatesResponse :datatype-) "cse571_project/GetPossibleStatesResponse")
(setf (get cse571_project::GetPossibleStatesResponse :definition-)
      "string state
string action
string action_params
---
string states
")



(provide :cse571_project/GetPossibleStates "ad5e6ede9037ccf3c74ff16323c7ca34")


