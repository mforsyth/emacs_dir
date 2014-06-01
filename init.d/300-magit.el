(defun magit/browser ()
  (interactive)
  (magit/make-status-frame)
  (magit/make-log-frame)
  (magit/make-commit-frame))

(defun magit/make-status-frame ()
  (select-frame (make-frame))
  (magit-status "."))

(defun magit/make-log-frame ()
  (magit/-make-frame-with-buffer "*magit-log*")
  (magit-log))

(defun magit/make-commit-frame ()
  (magit/-make-frame-with-buffer "*magit-commit*"))

(defun magit/-make-frame-with-buffer (name)
  (select-frame (make-frame))
  (display-buffer (get-buffer-create name)
                  '(display-buffer-same-window . ())))

(add-hook 'git-commit-mode-hook
          (lambda () (setq fill-column 70)))
