(in-package :cl-user)

(defpackage :hunchensocket-system
  (:use :cl :asdf))

(in-package :hunchensocket-system)

(defsystem :hunchensocket
  :description "WebSockets for Hunchentoot"
  :author "Alexander Kahl <e-user@fsfe.org>"
  :license "MIT"
  :depends-on (:hunchentoot :alexandria :ironclad :flexi-streams :chunga :trivial-utf-8
               :trivial-backtrace :bordeaux-threads)
  :components
  ((:module "server"
            :serial t
            :components
            ((:file "package")
             (:file "websocket")))))
