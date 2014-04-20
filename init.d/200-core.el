(require 'misc)
(require 'diff-mode)

;; Hooks

(add-hook
 'emacs-startup-hook
 (lambda ()
   (with-current-buffer "*scratch*"
     (hack-dir-local-variables-non-file-buffer))))

(defun display-compilation ()
  (interactive)
  (display-buffer "*compilation*"))

(defun display-clock ()
  (interactive)
  (find-file-other-frame (expand-file-name "~/.clock.org")))



; (defadvice raise-frame (around wmctrl activate)
;  (if (eq (window-system (ad-get-arg 0)) 'x)
;      (x-send-client-message nil 0 (ad-get-arg 0)
;                             "_NET_ACTIVE_WINDOW" 32 '(1))
;    ad-do-it))
