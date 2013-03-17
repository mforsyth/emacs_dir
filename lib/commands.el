(defun touch ()
  (interactive)
  (not-modified 1)
  (save-buffer))

(defun default-term ()
  (interactive)
  (eshell))
