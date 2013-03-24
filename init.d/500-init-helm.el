(require 'helm-config)
(require 'helm-match-plugin)
(require 'helm-ls-git)

(setq helm-ls-git-show-abs-or-relative 'relative)

(setq helm-buffer-max-length 55)
(setq helm-ff-transformer-show-only-basename nil)

(helm-mode 1)

(defun helm-in-default-git-project ()
  (interactive)
  (let ((default-directory command-line-default-directory))
    (helm-ls-git-ls)))
