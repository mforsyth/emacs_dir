(setq eshell-history-size 8192)

(add-hook 'eshell-mode-hook 'set-editor)

(add-to-list 'display-buffer-alist
             `("^\\*eshell" . ,init/open-buffer-in-frame))

(defun set-editor ()
  (setenv "EDITOR" (concat "emacsclient -c -s " server-name)))
