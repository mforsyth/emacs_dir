(global-set-key "\C-x\C-f" 'helm-find-files)
(global-set-key "\M-x" 'helm-M-x)
(global-set-key "\C-xb" 'helm-with-project)
(global-set-key "\C-x\C-b" 'helm-buffers-list)
(global-set-key "\M-." 'helm-etags-select)
(global-set-key "\M-," 'helm-imenu)
(global-set-key (kbd "C-c h") 'helm-mini)

(global-set-key"\C-xw" 'kill-region)
(global-set-key "\M-i" 'indent-relative)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key "\M-y" 'helm-show-kill-ring)

(global-set-key "\C-xg" 'magit-status)

(global-set-key "\M-&" 'project/async-shell-command)

(global-set-key "\C-x\C-c" 'save-buffers-kill-emacs)

(global-set-key (kbd "C-c s") 'vc-git-grep)
(global-set-key (kbd "C-c l") 'helm-ls-git-ls)
(global-set-key (kbd "C-c r") 'replace-regexp)
(global-set-key (kbd "C-x M-m") 'shell)
(global-set-key (kbd "C-c w s") 'delete-trailing-whitespace)

(global-set-key (kbd "C-c d r") 'dired-do-query-replace-regexp)

(global-set-key (kbd "C-c x") 'kill-whitespace)
(global-set-key (kbd "C-c t") 'load-theme)
(global-set-key (kbd "C-c e") 'eval-region)
