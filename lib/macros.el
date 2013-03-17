(defmacro show-buffer-or-exec (buffer &rest lst)
  `(if (get-buffer ,buffer)
      (let ((pop-up-windows nil)) (pop-to-buffer ,buffer))
    ,@lst))
