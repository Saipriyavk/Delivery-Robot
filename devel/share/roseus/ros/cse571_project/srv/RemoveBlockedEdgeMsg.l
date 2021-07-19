;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::RemoveBlockedEdgeMsg)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'RemoveBlockedEdgeMsg (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::REMOVEBLOCKEDEDGEMSG")
  (make-package "CSE571_PROJECT::REMOVEBLOCKEDEDGEMSG"))
(unless (find-package "CSE571_PROJECT::REMOVEBLOCKEDEDGEMSGREQUEST")
  (make-package "CSE571_PROJECT::REMOVEBLOCKEDEDGEMSGREQUEST"))
(unless (find-package "CSE571_PROJECT::REMOVEBLOCKEDEDGEMSGRESPONSE")
  (make-package "CSE571_PROJECT::REMOVEBLOCKEDEDGEMSGRESPONSE"))

(in-package "ROS")





(defclass cse571_project::RemoveBlockedEdgeMsgRequest
  :super ros::object
  :slots (_bookname ))

(defmethod cse571_project::RemoveBlockedEdgeMsgRequest
  (:init
   (&key
    ((:bookname __bookname) "")
    )
   (send-super :init)
   (setq _bookname (string __bookname))
   self)
  (:bookname
   (&optional __bookname)
   (if __bookname (setq _bookname __bookname)) _bookname)
  (:serialization-length
   ()
   (+
    ;; string _bookname
    4 (length _bookname)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bookname
       (write-long (length _bookname) s) (princ _bookname s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bookname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bookname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::RemoveBlockedEdgeMsgResponse
  :super ros::object
  :slots (_success ))

(defmethod cse571_project::RemoveBlockedEdgeMsgResponse
  (:init
   (&key
    ((:success __success) "")
    )
   (send-super :init)
   (setq _success (string __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _success
    4 (length _success)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _success
       (write-long (length _success) s) (princ _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _success
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _success (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cse571_project::RemoveBlockedEdgeMsg
  :super ros::object
  :slots ())

(setf (get cse571_project::RemoveBlockedEdgeMsg :md5sum-) "c991829b35c0398c16705137e62ce3d7")
(setf (get cse571_project::RemoveBlockedEdgeMsg :datatype-) "cse571_project/RemoveBlockedEdgeMsg")
(setf (get cse571_project::RemoveBlockedEdgeMsg :request) cse571_project::RemoveBlockedEdgeMsgRequest)
(setf (get cse571_project::RemoveBlockedEdgeMsg :response) cse571_project::RemoveBlockedEdgeMsgResponse)

(defmethod cse571_project::RemoveBlockedEdgeMsgRequest
  (:response () (instance cse571_project::RemoveBlockedEdgeMsgResponse :init)))

(setf (get cse571_project::RemoveBlockedEdgeMsgRequest :md5sum-) "c991829b35c0398c16705137e62ce3d7")
(setf (get cse571_project::RemoveBlockedEdgeMsgRequest :datatype-) "cse571_project/RemoveBlockedEdgeMsgRequest")
(setf (get cse571_project::RemoveBlockedEdgeMsgRequest :definition-)
      "string bookname
---
string success
")

(setf (get cse571_project::RemoveBlockedEdgeMsgResponse :md5sum-) "c991829b35c0398c16705137e62ce3d7")
(setf (get cse571_project::RemoveBlockedEdgeMsgResponse :datatype-) "cse571_project/RemoveBlockedEdgeMsgResponse")
(setf (get cse571_project::RemoveBlockedEdgeMsgResponse :definition-)
      "string bookname
---
string success
")



(provide :cse571_project/RemoveBlockedEdgeMsg "c991829b35c0398c16705137e62ce3d7")


