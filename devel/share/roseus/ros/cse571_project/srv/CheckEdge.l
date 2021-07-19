;; Auto-generated. Do not edit!


(when (boundp 'cse571_project::CheckEdge)
  (if (not (find-package "CSE571_PROJECT"))
    (make-package "CSE571_PROJECT"))
  (shadow 'CheckEdge (find-package "CSE571_PROJECT")))
(unless (find-package "CSE571_PROJECT::CHECKEDGE")
  (make-package "CSE571_PROJECT::CHECKEDGE"))
(unless (find-package "CSE571_PROJECT::CHECKEDGEREQUEST")
  (make-package "CSE571_PROJECT::CHECKEDGEREQUEST"))
(unless (find-package "CSE571_PROJECT::CHECKEDGERESPONSE")
  (make-package "CSE571_PROJECT::CHECKEDGERESPONSE"))

(in-package "ROS")





(defclass cse571_project::CheckEdgeRequest
  :super ros::object
  :slots (_x1 _y1 _x2 _y2 ))

(defmethod cse571_project::CheckEdgeRequest
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:serialization-length
   ()
   (+
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cse571_project::CheckEdgeResponse
  :super ros::object
  :slots (_value ))

(defmethod cse571_project::CheckEdgeResponse
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

(defclass cse571_project::CheckEdge
  :super ros::object
  :slots ())

(setf (get cse571_project::CheckEdge :md5sum-) "1ad13511a24e6f2f7882cfab4c1f2f18")
(setf (get cse571_project::CheckEdge :datatype-) "cse571_project/CheckEdge")
(setf (get cse571_project::CheckEdge :request) cse571_project::CheckEdgeRequest)
(setf (get cse571_project::CheckEdge :response) cse571_project::CheckEdgeResponse)

(defmethod cse571_project::CheckEdgeRequest
  (:response () (instance cse571_project::CheckEdgeResponse :init)))

(setf (get cse571_project::CheckEdgeRequest :md5sum-) "1ad13511a24e6f2f7882cfab4c1f2f18")
(setf (get cse571_project::CheckEdgeRequest :datatype-) "cse571_project/CheckEdgeRequest")
(setf (get cse571_project::CheckEdgeRequest :definition-)
      "float32 x1
float32 y1
float32 x2
float32 y2
---
int32 value
")

(setf (get cse571_project::CheckEdgeResponse :md5sum-) "1ad13511a24e6f2f7882cfab4c1f2f18")
(setf (get cse571_project::CheckEdgeResponse :datatype-) "cse571_project/CheckEdgeResponse")
(setf (get cse571_project::CheckEdgeResponse :definition-)
      "float32 x1
float32 y1
float32 x2
float32 y2
---
int32 value
")



(provide :cse571_project/CheckEdge "1ad13511a24e6f2f7882cfab4c1f2f18")


