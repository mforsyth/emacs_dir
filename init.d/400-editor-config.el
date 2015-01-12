; don't force full yes or no answers
(defalias 'yes-or-no-p 'y-or-n-p)

; re-enable useful disabled commands
(put 'upcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)

; don't create weird temp files
(setq make-backup-files nil)
(setq auto-save-default nil)

; shell color
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq tab-width 2)
;(tabbar-mode 0)

