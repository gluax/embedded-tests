(defun hello-lisp ()
  (format t "Hello from lisp!~%")
  :foo)

(hello-lisp)

(defun fib (n)
  (if (< n 2) n
      (+ (fib (- n 1)) (fib (- n 2)))))

(princ (fib 10))
