(require 'helm-config)
(require 'helm-match-plugin)
(require 'helm-ls-git)
(require 'helm-files)

(setq helm-ls-git-show-abs-or-relative 'relative)

(setq helm-buffer-max-length 55)
(setq helm-ff-transformer-show-only-basename nil)

(setq helm-ff-auto-update-initial-value t)

(helm-mode 1)

(define-key helm-map "\C-w" 'backward-kill-word)

(defun helm-with-project ()
  (interactive)
  (helm-other-buffer '(helm-source-buffers-list
                       helm-source-ido-virtual-buffers
                       helm-source-ls-git-status
                       helm-source-ls-git
                       helm-source-recentf
                       helm-source-buffer-not-found)
                     "*helm with project"))
