(in-package #:tools)

(defun hello-lisp ()
  (format t "Hello from lisp!~%")
  :foo)

(defun main ()
  (load "entrypoint.lisp")
  (terpri))
