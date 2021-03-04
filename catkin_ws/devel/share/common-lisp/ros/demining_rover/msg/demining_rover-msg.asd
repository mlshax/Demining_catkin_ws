
(cl:in-package :asdf)

(defsystem "demining_rover-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GPSint" :depends-on ("_package_GPSint"))
    (:file "_package_GPSint" :depends-on ("_package"))
  ))