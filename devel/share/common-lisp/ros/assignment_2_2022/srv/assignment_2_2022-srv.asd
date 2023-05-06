
(cl:in-package :asdf)

(defsystem "assignment_2_2022-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StatInf" :depends-on ("_package_StatInf"))
    (:file "_package_StatInf" :depends-on ("_package"))
  ))