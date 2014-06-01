(global-set-key "\C-x\C-f" 'helm-find-files)
(global-set-key "\M-x" 'helm-M-x)
(global-set-key "\C-xb" 'helm-with-project)
(global-set-key "\C-x\C-b" 'helm-buffers-list)
(global-set-key "\M-." 'helm-etags-select)
(global-set-key "\M-," 'helm-imenu)

(global-set-key"\C-xw" 'kill-region)
(global-set-key "\M-i" 'indent-relative)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key "\M-y" 'helm-show-kill-ring)

(global-set-key "\C-cg" 'magit-status)
(global-set-key "\C-cs" 'eshell)
(global-set-key "\C-ck" 'display-clock)
(global-set-key "\C-w" 'backward-kill-word)

(global-set-key "\C-ct" 'touch)

(global-set-key "\M-&" 'project/async-shell-command)

(global-set-key "\C-x\C-c" 'save-buffers-kill-emacs)
