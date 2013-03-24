(require 'helm-config)
(require 'helm-match-plugin)
(require 'helm-ls-git)
(require 'helm-files)

(setq helm-ls-git-show-abs-or-relative 'relative)

(setq helm-buffer-max-length 55)
(setq helm-ff-transformer-show-only-basename nil)

(helm-mode 1)

(defun helm-with-project ()
  (interactive)
  (helm-other-buffer '(helm-source-buffers-list
                       helm-source-ls-git-status
                       helm-source-ls-git
                       helm-source-recentf
                       helm-source-buffer-not-found)
                     "*helm with project"))
