;; Auto-generated. Do not edit!


(when (boundp 'control::FollowPath)
  (if (not (find-package "CONTROL"))
    (make-package "CONTROL"))
  (shadow 'FollowPath (find-package "CONTROL")))
(unless (find-package "CONTROL::FOLLOWPATH")
  (make-package "CONTROL::FOLLOWPATH"))
(unless (find-package "CONTROL::FOLLOWPATHREQUEST")
  (make-package "CONTROL::FOLLOWPATHREQUEST"))
(unless (find-package "CONTROL::FOLLOWPATHRESPONSE")
  (make-package "CONTROL::FOLLOWPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass control::FollowPathRequest
  :super ros::object
  :slots (_path _speed ))

(defmethod control::FollowPathRequest
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _path __path)
   (setq _speed (float __speed))
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass control::FollowPathResponse
  :super ros::object
  :slots (_finished _error ))

(defmethod control::FollowPathResponse
  (:init
   (&key
    ((:finished __finished) nil)
    ((:error __error) nil)
    )
   (send-super :init)
   (setq _finished __finished)
   (setq _error __error)
   self)
  (:finished
   (&optional (__finished :null))
   (if (not (eq __finished :null)) (setq _finished __finished)) _finished)
  (:error
   (&optional (__error :null))
   (if (not (eq __error :null)) (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; bool _finished
    1
    ;; bool _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finished
       (if _finished (write-byte -1 s) (write-byte 0 s))
     ;; bool _error
       (if _error (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error
     (setq _error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass control::FollowPath
  :super ros::object
  :slots ())

(setf (get control::FollowPath :md5sum-) "c2bb767f9ceb2e20df0ce88c9cacf34d")
(setf (get control::FollowPath :datatype-) "control/FollowPath")
(setf (get control::FollowPath :request) control::FollowPathRequest)
(setf (get control::FollowPath :response) control::FollowPathResponse)

(defmethod control::FollowPathRequest
  (:response () (instance control::FollowPathResponse :init)))

(setf (get control::FollowPathRequest :md5sum-) "c2bb767f9ceb2e20df0ce88c9cacf34d")
(setf (get control::FollowPathRequest :datatype-) "control/FollowPathRequest")
(setf (get control::FollowPathRequest :definition-)
      "nav_msgs/Path path
float64 speed

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool finished
bool error

")

(setf (get control::FollowPathResponse :md5sum-) "c2bb767f9ceb2e20df0ce88c9cacf34d")
(setf (get control::FollowPathResponse :datatype-) "control/FollowPathResponse")
(setf (get control::FollowPathResponse :definition-)
      "nav_msgs/Path path
float64 speed

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool finished
bool error

")



(provide :control/FollowPath "c2bb767f9ceb2e20df0ce88c9cacf34d")


