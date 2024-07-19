;; array.el
(setq arr [1 2 3 4 5])
(message "Array elements are: %s" (mapconcat 'number-to-string arr " "))
