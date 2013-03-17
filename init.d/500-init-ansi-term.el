;(setq ansi-term-color-vector
;      [unspecified "#2e3436" "#d30000" "#4e9a06" "#c4a000"
;                   "#3465a4" "#75507b" "#06989a" "#ffffff"])

;(setq ansi-term-color-vector
;      [term-face "#073642" "#dc322f" "#859900" "#b58900"
;                   "#268bd2" "#d33682" "#2aa198" "#eee8d5"])

;; Mode local settings
(add-hook
 'term-mode-hook
 (lambda ()
   ;; Variables
   (setq show-trailing-whitespace nil)

   ;; Keybindings
   (define-key term-raw-map (kbd "C-<backspace>") 'term-send-raw-meta)
   ;(define-key term-raw-map (kbd "C-c c") 'rails/console)
   ;(define-key term-raw-map (kbd "C-c r") 'rails/guard)

   (autopair-mode -1)))

  ;(show-buffer-or-exec "*ansi-term*" (ansi-term "/bin/zsh")))
