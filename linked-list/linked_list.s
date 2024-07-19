;; linked_list.s
(display "Array elements are: ")
(let ((arr '(1 2 3 4 5)))
  (for-each (lambda (x) (display x) (display " ")) arr)
  (newline))
