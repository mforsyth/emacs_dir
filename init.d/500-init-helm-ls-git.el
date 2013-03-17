(require 'helm-ls-git)

(setq helm-ls-git-show-abs-or-relative 'relative)

(defun helm-in-default-git-project ()
  (interactive)
  (let ((default-directory command-line-default-directory))
    (helm-ls-git-ls)))
