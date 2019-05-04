(asdf:defsystem :tools
    :build-operation :static-program-op
    :build-pathname "main"
    :entry-point "tools:main"
    :defsystem-depends-on (#:cffi-toolchain)
    :depends-on (#:cffi-toolchain)
    :serial t
    :components
    ((:file "packages")
     (:file "hello-lisp")))
