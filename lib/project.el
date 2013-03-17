(defvar project/root-directory command-line-default-directory)

(defun project/async-shell-command ()
  (interactive)
  (let ((default-directory project/root-directory))
    (call-interactively 'async-shell-command)))
