; don't show startup message
(setq inhibit-startup-message t)
; set initial frame size
(setq default-frame-alist
      (append default-frame-alist
              '(
                (width . 158) (height . 40)
                )))
