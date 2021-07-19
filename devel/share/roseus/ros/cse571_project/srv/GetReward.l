;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::GetReward)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'GetReward (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::GETREWARD")
  (make-package "CSE571_PROJECT::GETREWARD"))
(unless (find-package "CSE571_PROJECT::GETREWARDREQUEST")
  (make-package "CSE571_PROJECT::GETREWARDREQUEST"))
(unless (find-package "CSE571_PROJECT::GETREWARDRESPONSE")
  (make-package "CSE571_PROJECT::GETREWARDRESPONSE"))

(in-package "ROS")





(defclass cse571_project::GetRewardRequest
  :super ros::object
  :slots (_state _action _next_state ))

(defmethod cse571_project::GetRewardRequest
  (:init
   (&key
    ((:state __state) "")
    ((:action __action) "")
    ((:next_state __next_state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _action (string __action))
   (setq _next_state (string __next_state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:next_state
   (&optional __next_state)
   (if __next_state (setq _next_state __next_state)) _next_state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _action
    4 (length _action)
    ;; string _next_state
    4 (length _next_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _next_state
       (write-long (length _next_state) s) (princ _next_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _next_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _next_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::GetRewardResponse
  :super ros::object
  :slots (_reward ))

(defmethod cse571_project::GetRewardResponse
  (:init
   (&key
    ((:reward __reward) 0.0)
    )
   (send-super :init)
   (setq _reward (float __reward))
   self)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:serialization-length
   ()
   (+
    ;; float64 _reward
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _reward
     (setq _reward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cse571_project::GetReward
  :super ros::object
  :slots ())

(setf (get cse571_project::GetReward :md5sum-) "5db7b1f3b0b303c537d7253bf7a2c047")
(setf (get cse571_project::GetReward :datatype-) "cse571_project/GetReward")
(setf (get cse571_project::GetReward :request) cse571_project::GetRewardRequest)
(setf (get cse571_project::GetReward :response) cse571_project::GetRewardResponse)

(defmethod cse571_project::GetRewardRequest
  (:response () (instance cse571_project::GetRewardResponse :init)))

(setf (get cse571_project::GetRewardRequest :md5sum-) "5db7b1f3b0b303c537d7253bf7a2c047")
(setf (get cse571_project::GetRewardRequest :datatype-) "cse571_project/GetRewardRequest")
(setf (get cse571_project::GetRewardRequest :definition-)
      "string state
string action
string next_state
---
float64 reward
")

(setf (get cse571_project::GetRewardResponse :md5sum-) "5db7b1f3b0b303c537d7253bf7a2c047")
(setf (get cse571_project::GetRewardResponse :datatype-) "cse571_project/GetRewardResponse")
(setf (get cse571_project::GetRewardResponse :definition-)
      "string state
string action
string next_state
---
float64 reward
")



(provide :cse571_project/GetReward "5db7b1f3b0b303c537d7253bf7a2c047")


