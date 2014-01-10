(defvar init/open-buffer-in-frame '((display-buffer-reuse-window display-buffer-pop-up-frame) (reusable-frames . t)))
(defvar init/open-buffer-in-frame-no-switch
  (append init/open-buffer-in-frame '((inhibit-switch-frame . t))))
