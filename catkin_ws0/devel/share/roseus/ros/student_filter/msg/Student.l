;; Auto-generated. Do not edit!


(when (boundp 'student_filter::Student)
  (if (not (find-package "STUDENT_FILTER"))
    (make-package "STUDENT_FILTER"))
  (shadow 'Student (find-package "STUDENT_FILTER")))
(unless (find-package "STUDENT_FILTER::STUDENT")
  (make-package "STUDENT_FILTER::STUDENT"))

(in-package "ROS")
;;//! \htmlinclude Student.msg.html


(defclass student_filter::Student
  :super ros::object
  :slots (_name _age _last_name _departement ))

(defmethod student_filter::Student
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:last_name __last_name) "")
    ((:departement __departement) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _last_name (string __last_name))
   (setq _departement (string __departement))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:last_name
   (&optional __last_name)
   (if __last_name (setq _last_name __last_name)) _last_name)
  (:departement
   (&optional __departement)
   (if __departement (setq _departement __departement)) _departement)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int8 _age
    1
    ;; string _last_name
    4 (length _last_name)
    ;; string _departement
    4 (length _departement)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _age
       (write-byte _age s)
     ;; string _last_name
       (write-long (length _last_name) s) (princ _last_name s)
     ;; string _departement
       (write-long (length _departement) s) (princ _departement s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _age 127) (setq _age (- _age 256)))
   ;; string _last_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _departement
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _departement (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get student_filter::Student :md5sum-) "d5f20cbe37044f90b1f7b81f0cb5423e")
(setf (get student_filter::Student :datatype-) "student_filter/Student")
(setf (get student_filter::Student :definition-)
      "string  name
int8    age
string  last_name
string  departement
")



(provide :student_filter/Student "d5f20cbe37044f90b1f7b81f0cb5423e")


