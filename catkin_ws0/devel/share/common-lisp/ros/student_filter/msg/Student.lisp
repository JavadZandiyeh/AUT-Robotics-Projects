; Auto-generated. Do not edit!


(cl:in-package student_filter-msg)


;//! \htmlinclude Student.msg.html

(cl:defclass <Student> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (last_name
    :reader last_name
    :initarg :last_name
    :type cl:string
    :initform "")
   (departement
    :reader departement
    :initarg :departement
    :type cl:string
    :initform ""))
)

(cl:defclass Student (<Student>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Student>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Student)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name student_filter-msg:<Student> is deprecated: use student_filter-msg:Student instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader student_filter-msg:name-val is deprecated.  Use student_filter-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader student_filter-msg:age-val is deprecated.  Use student_filter-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'last_name-val :lambda-list '(m))
(cl:defmethod last_name-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader student_filter-msg:last_name-val is deprecated.  Use student_filter-msg:last_name instead.")
  (last_name m))

(cl:ensure-generic-function 'departement-val :lambda-list '(m))
(cl:defmethod departement-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader student_filter-msg:departement-val is deprecated.  Use student_filter-msg:departement instead.")
  (departement m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Student>) ostream)
  "Serializes a message object of type '<Student>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'departement))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'departement))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Student>) istream)
  "Deserializes a message object of type '<Student>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'departement) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'departement) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Student>)))
  "Returns string type for a message object of type '<Student>"
  "student_filter/Student")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Student)))
  "Returns string type for a message object of type 'Student"
  "student_filter/Student")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Student>)))
  "Returns md5sum for a message object of type '<Student>"
  "d5f20cbe37044f90b1f7b81f0cb5423e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Student)))
  "Returns md5sum for a message object of type 'Student"
  "d5f20cbe37044f90b1f7b81f0cb5423e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Student>)))
  "Returns full string definition for message of type '<Student>"
  (cl:format cl:nil "string  name~%int8    age~%string  last_name~%string  departement~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Student)))
  "Returns full string definition for message of type 'Student"
  (cl:format cl:nil "string  name~%int8    age~%string  last_name~%string  departement~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Student>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     4 (cl:length (cl:slot-value msg 'last_name))
     4 (cl:length (cl:slot-value msg 'departement))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Student>))
  "Converts a ROS message object to a list"
  (cl:list 'Student
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':last_name (last_name msg))
    (cl:cons ':departement (departement msg))
))
