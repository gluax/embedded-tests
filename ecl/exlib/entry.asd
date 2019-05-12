(asdf:defsystem :entry
  :name "tester"
  :author "Jonathan Pavlik"
  :version "1.0.0"
  :license "MIT"
  :description "A small demo of cffi and embeded ecl in C++."
  :build-operation :monolithic-concatenate-source-op
  :build-pathname "lib"
  :depends-on (#:uiop #:cffi)
  :serial t
  :components
  ((:file "packages")
   (:file "hello-lisp")))
