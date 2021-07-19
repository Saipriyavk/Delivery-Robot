;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::GetPossibleActions)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'GetPossibleActions (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::GETPOSSIBLEACTIONS")
  (make-package "CSE571_PROJECT::GETPOSSIBLEACTIONS"))
(unless (find-package "CSE571_PROJECT::GETPOSSIBLEACTIONSREQUEST")
  (make-package "CSE571_PROJECT::GETPOSSIBLEACTIONSREQUEST"))
(unless (find-package "CSE571_PROJECT::GETPOSSIBLEACTIONSRESPONSE")
  (make-package "CSE571_PROJECT::GETPOSSIBLEACTIONSRESPONSE"))

(in-package "ROS")





(defclass cse571_project::GetPossibleActionsRequest
  :super ros::object
  :slots (_state ))

(defmethod cse571_project::GetPossibleActionsRequest
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

(defclass cse571_project::GetPossibleActionsResponse
  :super ros::object
  :slots (_actions ))

(defmethod cse571_project::GetPossibleActionsResponse
  (:init
   (&key
    ((:actions __actions) "")
    )
   (send-super :init)
   (setq _actions (string __actions))
   self)
  (:actions
   (&optional __actions)
   (if __actions (setq _actions __actions)) _actions)
  (:serialization-length
   ()
   (+
    ;; string _actions
    4 (length _actions)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _actions
       (write-long (length _actions) s) (princ _actions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _actions
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actions (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::GetPossibleActions
  :super ros::object
  :slots ())

(setf (get cse571_project::GetPossibleActions :md5sum-) "6b2bdb080846c43b9c1353f9cdd5a8a5")
(setf (get cse571_project::GetPossibleActions :datatype-) "cse571_project/GetPossibleActions")
(setf (get cse571_project::GetPossibleActions :request) cse571_project::GetPossibleActionsRequest)
(setf (get cse571_project::GetPossibleActions :response) cse571_project::GetPossibleActionsResponse)

(defmethod cse571_project::GetPossibleActionsRequest
  (:response () (instance cse571_project::GetPossibleActionsResponse :init)))

(setf (get cse571_project::GetPossibleActionsRequest :md5sum-) "6b2bdb080846c43b9c1353f9cdd5a8a5")
(setf (get cse571_project::GetPossibleActionsRequest :datatype-) "cse571_project/GetPossibleActionsRequest")
(setf (get cse571_project::GetPossibleActionsRequest :definition-)
      "string state
---
string actions
")

(setf (get cse571_project::GetPossibleActionsResponse :md5sum-) "6b2bdb080846c43b9c1353f9cdd5a8a5")
(setf (get cse571_project::GetPossibleActionsResponse :datatype-) "cse571_project/GetPossibleActionsResponse")
(setf (get cse571_project::GetPossibleActionsResponse :definition-)
      "string state
---
string actions
")



(provide :cse571_project/GetPossibleActions "6b2bdb080846c43b9c1353f9cdd5a8a5")


