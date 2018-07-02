
(cl:in-package :asdf)

(defsystem "kautham-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "fVector" :depends-on ("_package_fVector"))
    (:file "_package_fVector" :depends-on ("_package"))
  ))