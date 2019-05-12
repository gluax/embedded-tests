(in-package #:entry)

(cffi:define-foreign-library libexample
  (:unix "libexample.so")
     (t (:default "libexample")))

(let ((cffi:*foreign-library-directories* '(#p".")))
  (cffi:use-foreign-library libexample))

(cffi:defcstruct hello)
(cffi:defcfun "new_hello" :pointer
  (who :string))
(cffi:defcfun "greet_hello" :string
  (h :pointer))

(let ((test (new-hello "jon")))
  (princ (greet-hello test)))
