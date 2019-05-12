(asdf:defsystem :tools
  :name "tester"
  :author "Jonathan Pavlik"
  :version "1.0.0"
  :license "MIT"
  :description "A small demo of cffi with sbcl."
  :build-operation :static-program-op
  :build-pathname "main"
  :entry-point "tools:main"
  :defsystem-depends-on (#:cffi-toolchain)
  :depends-on (#:cffi-toolchain #:uiop)
  :serial t
  :components
  ((:file "packages")
   (:file "hello-lisp")))
