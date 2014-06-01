(require 'helm-config)
(require 'helm-match-plugin)
(require 'helm-ls-git)
(require 'helm-files)

(setq helm-ls-git-show-abs-or-relative 'relative)

(setq helm-buffer-max-length 55)
(setq helm-ff-transformer-show-only-basename nil)

(setq helm-ff-auto-update-initial-value t)

(setq helm-grep-default-command "ack-grep -Hn --no-group --no-color %p %f")
(setq helm-grep-default-recurse-command "ack-grep -H --no-group --no-color %p %f")

(helm-mode 1)

(dolist (kmap (list helm-map
                    helm-grep-mode-map
                    helm-read-file-map
                    helm-find-files-map))
  (define-key kmap "\C-w" 'backward-kill-word))

(defun helm-with-project ()
  (interactive)
  (helm-other-buffer '(helm-source-buffers-list
                       helm-source-ido-virtual-buffers
                       helm-source-ls-git-status
                       helm-source-ls-git
                       helm-source-recentf
                       helm-source-buffer-not-found)
                     "*helm with project"))

(defun my/helm-recursive-grep ()
  (interactive)
  (let ((current-prefix-arg t))
    (helm-do-grep)))

(global-set-key "\C-cf" 'my/helm-recursive-grep)
