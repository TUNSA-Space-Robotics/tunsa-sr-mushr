
(cl:in-package :asdf)

(defsystem "control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "FollowPath" :depends-on ("_package_FollowPath"))
    (:file "_package_FollowPath" :depends-on ("_package"))
  ))