(setq eshell-history-size 8192)

(add-hook 'eshell-mode-hook 'set-editor)

(defun set-editor ()
  (setenv "EDITOR" (concat "emacsclient -c -s " server-name)))
