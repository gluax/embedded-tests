(in-package #:tools)

(cffi:define-foreign-library libexample
  (:unix "libexample.so")
  (t (:default "libexample")))

(let ((cffi:*foreign-library-directories* '(#p"./exlib/")))
  (cffi:use-foreign-library libexample))

(cffi:defcstruct hello)
(cffi:defcfun "new_hello" :pointer
  (who :string))
(cffi:defcfun "greet_hello" :string
  (h :pointer))

(defun hello-lisp-from-c++ ()
  (let ((test (new-hello "C++ lib")))
    (format t "~a~%" (greet-hello test))))

(defun hello-lisp ()
  (format t "Hello from lisp!~%")
  :foo)

(defun main ()
  (hello-lisp)
  (hello-lisp-from-c++)
  (load "entrypoint.lisp")
  (terpri))
