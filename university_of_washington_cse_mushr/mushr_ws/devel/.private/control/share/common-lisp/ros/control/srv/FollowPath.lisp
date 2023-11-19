; Auto-generated. Do not edit!


(cl:in-package control-srv)


;//! \htmlinclude FollowPath-request.msg.html

(cl:defclass <FollowPath-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass FollowPath-request (<FollowPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control-srv:<FollowPath-request> is deprecated: use control-srv:FollowPath-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <FollowPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-srv:path-val is deprecated.  Use control-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <FollowPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-srv:speed-val is deprecated.  Use control-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPath-request>) ostream)
  "Serializes a message object of type '<FollowPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPath-request>) istream)
  "Deserializes a message object of type '<FollowPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPath-request>)))
  "Returns string type for a service object of type '<FollowPath-request>"
  "control/FollowPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath-request)))
  "Returns string type for a service object of type 'FollowPath-request"
  "control/FollowPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPath-request>)))
  "Returns md5sum for a message object of type '<FollowPath-request>"
  "c2bb767f9ceb2e20df0ce88c9cacf34d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPath-request)))
  "Returns md5sum for a message object of type 'FollowPath-request"
  "c2bb767f9ceb2e20df0ce88c9cacf34d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPath-request>)))
  "Returns full string definition for message of type '<FollowPath-request>"
  (cl:format cl:nil "nav_msgs/Path path~%float64 speed~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPath-request)))
  "Returns full string definition for message of type 'FollowPath-request"
  (cl:format cl:nil "nav_msgs/Path path~%float64 speed~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPath-request
    (cl:cons ':path (path msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude FollowPath-response.msg.html

(cl:defclass <FollowPath-response> (roslisp-msg-protocol:ros-message)
  ((finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FollowPath-response (<FollowPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control-srv:<FollowPath-response> is deprecated: use control-srv:FollowPath-response instead.")))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <FollowPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-srv:finished-val is deprecated.  Use control-srv:finished instead.")
  (finished m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <FollowPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-srv:error-val is deprecated.  Use control-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPath-response>) ostream)
  "Serializes a message object of type '<FollowPath-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPath-response>) istream)
  "Deserializes a message object of type '<FollowPath-response>"
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPath-response>)))
  "Returns string type for a service object of type '<FollowPath-response>"
  "control/FollowPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath-response)))
  "Returns string type for a service object of type 'FollowPath-response"
  "control/FollowPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPath-response>)))
  "Returns md5sum for a message object of type '<FollowPath-response>"
  "c2bb767f9ceb2e20df0ce88c9cacf34d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPath-response)))
  "Returns md5sum for a message object of type 'FollowPath-response"
  "c2bb767f9ceb2e20df0ce88c9cacf34d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPath-response>)))
  "Returns full string definition for message of type '<FollowPath-response>"
  (cl:format cl:nil "bool finished~%bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPath-response)))
  "Returns full string definition for message of type 'FollowPath-response"
  (cl:format cl:nil "bool finished~%bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPath-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPath-response
    (cl:cons ':finished (finished msg))
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FollowPath)))
  'FollowPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FollowPath)))
  'FollowPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPath)))
  "Returns string type for a service object of type '<FollowPath>"
  "control/FollowPath")