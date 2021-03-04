
(cl:in-package :asdf)

(defsystem "rbe3002_turtle06-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FrontierList" :depends-on ("_package_FrontierList"))
    (:file "_package_FrontierList" :depends-on ("_package"))
    (:file "FrontierMsg" :depends-on ("_package_FrontierMsg"))
    (:file "_package_FrontierMsg" :depends-on ("_package"))
  ))