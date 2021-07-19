;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::GetActions)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'GetActions (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::GETACTIONS")
  (make-package "CSE571_PROJECT::GETACTIONS"))
(unless (find-package "CSE571_PROJECT::GETACTIONSREQUEST")
  (make-package "CSE571_PROJECT::GETACTIONSREQUEST"))
(unless (find-package "CSE571_PROJECT::GETACTIONSRESPONSE")
  (make-package "CSE571_PROJECT::GETACTIONSRESPONSE"))

(in-package "ROS")





(defclass cse571_project::GetActionsRequest
  :super ros::object
  :slots ())

(defmethod cse571_project::GetActionsRequest
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

(defclass cse571_project::GetActionsResponse
  :super ros::object
  :slots (_actions ))

(defmethod cse571_project::GetActionsResponse
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

(defclass cse571_project::GetActions
  :super ros::object
  :slots ())

(setf (get cse571_project::GetActions :md5sum-) "736c654215c18c9e1fa35bdcf5f22ffa")
(setf (get cse571_project::GetActions :datatype-) "cse571_project/GetActions")
(setf (get cse571_project::GetActions :request) cse571_project::GetActionsRequest)
(setf (get cse571_project::GetActions :response) cse571_project::GetActionsResponse)

(defmethod cse571_project::GetActionsRequest
  (:response () (instance cse571_project::GetActionsResponse :init)))

(setf (get cse571_project::GetActionsRequest :md5sum-) "736c654215c18c9e1fa35bdcf5f22ffa")
(setf (get cse571_project::GetActionsRequest :datatype-) "cse571_project/GetActionsRequest")
(setf (get cse571_project::GetActionsRequest :definition-)
      "---
string actions
")

(setf (get cse571_project::GetActionsResponse :md5sum-) "736c654215c18c9e1fa35bdcf5f22ffa")
(setf (get cse571_project::GetActionsResponse :datatype-) "cse571_project/GetActionsResponse")
(setf (get cse571_project::GetActionsResponse :definition-)
      "---
string actions
")



(provide :cse571_project/GetActions "736c654215c18c9e1fa35bdcf5f22ffa")


