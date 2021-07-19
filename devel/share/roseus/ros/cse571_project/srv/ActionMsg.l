;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::ActionMsg)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'ActionMsg (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::ACTIONMSG")
  (make-package "CSE571_PROJECT::ACTIONMSG"))
(unless (find-package "CSE571_PROJECT::ACTIONMSGREQUEST")
  (make-package "CSE571_PROJECT::ACTIONMSGREQUEST"))
(unless (find-package "CSE571_PROJECT::ACTIONMSGRESPONSE")
  (make-package "CSE571_PROJECT::ACTIONMSGRESPONSE"))

(in-package "ROS")





(defclass cse571_project::ActionMsgRequest
  :super ros::object
  :slots (_action_name _action_params ))

(defmethod cse571_project::ActionMsgRequest
  (:init
   (&key
    ((:action_name __action_name) "")
    ((:action_params __action_params) "")
    )
   (send-super :init)
   (setq _action_name (string __action_name))
   (setq _action_params (string __action_params))
   self)
  (:action_name
   (&optional __action_name)
   (if __action_name (setq _action_name __action_name)) _action_name)
  (:action_params
   (&optional __action_params)
   (if __action_params (setq _action_params __action_params)) _action_params)
  (:serialization-length
   ()
   (+
    ;; string _action_name
    4 (length _action_name)
    ;; string _action_params
    4 (length _action_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action_name
       (write-long (length _action_name) s) (princ _action_name s)
     ;; string _action_params
       (write-long (length _action_params) s) (princ _action_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::ActionMsgResponse
  :super ros::object
  :slots (_success _next_state ))

(defmethod cse571_project::ActionMsgResponse
  (:init
   (&key
    ((:success __success) 0.0)
    ((:next_state __next_state) "")
    )
   (send-super :init)
   (setq _success (float __success))
   (setq _next_state (string __next_state))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:next_state
   (&optional __next_state)
   (if __next_state (setq _next_state __next_state)) _next_state)
  (:serialization-length
   ()
   (+
    ;; float64 _success
    8
    ;; string _next_state
    4 (length _next_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _success
       (sys::poke _success (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _next_state
       (write-long (length _next_state) s) (princ _next_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _success
     (setq _success (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _next_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _next_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::ActionMsg
  :super ros::object
  :slots ())

(setf (get cse571_project::ActionMsg :md5sum-) "dfdaf84421aa9323fca0ea8f7917a197")
(setf (get cse571_project::ActionMsg :datatype-) "cse571_project/ActionMsg")
(setf (get cse571_project::ActionMsg :request) cse571_project::ActionMsgRequest)
(setf (get cse571_project::ActionMsg :response) cse571_project::ActionMsgResponse)

(defmethod cse571_project::ActionMsgRequest
  (:response () (instance cse571_project::ActionMsgResponse :init)))

(setf (get cse571_project::ActionMsgRequest :md5sum-) "dfdaf84421aa9323fca0ea8f7917a197")
(setf (get cse571_project::ActionMsgRequest :datatype-) "cse571_project/ActionMsgRequest")
(setf (get cse571_project::ActionMsgRequest :definition-)
      "string action_name
string action_params
---
float64 success
string next_state
")

(setf (get cse571_project::ActionMsgResponse :md5sum-) "dfdaf84421aa9323fca0ea8f7917a197")
(setf (get cse571_project::ActionMsgResponse :datatype-) "cse571_project/ActionMsgResponse")
(setf (get cse571_project::ActionMsgResponse :definition-)
      "string action_name
string action_params
---
float64 success
string next_state
")



(provide :cse571_project/ActionMsg "dfdaf84421aa9323fca0ea8f7917a197")


