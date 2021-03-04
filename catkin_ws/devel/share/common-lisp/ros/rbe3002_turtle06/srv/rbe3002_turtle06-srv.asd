
(cl:in-package :asdf)

(defsystem "rbe3002_turtle06-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rbe3002_turtle06-msg
)
  :components ((:file "_package")
    (:file "GetFrontiers" :depends-on ("_package_GetFrontiers"))
    (:file "_package_GetFrontiers" :depends-on ("_package"))
  ))