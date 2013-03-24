(require 'uniquify)
(require 'diff-mode)
(require 'vc-git)

;; Variables
(setq-default indent-tabs-mode nil)

(setq make-backup-files nil)
(setq x-select-enable-clipboard t)
(setq scroll-conservatively 1000)

(setq recentf-max-saved-items 10000)

(setq initial-frame-alist
      (setq default-frame-alist '((menu-bar-lines . 0)
				  (tool-bar-lines . 0)
				  ; (background-color . "#181818")
				  (background-mode . dark)
				  (border-color . "black")
				  (cursor-color . "white")
                                  ; (cursor-type . bar)
				  (vertical-scroll-bars . nil)
				  (foreground-color . "white"))))

(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)

(setq display-buffer-reuse-frames t)
(setq inhibit-startup-screen t)
(setq kill-ring-max 1000)
(setq make-backup-files nil)
(setq recentf-max-saved-items 1000)
(setq scroll-conservatively 1000)
(setq x-select-enable-clipboard t)

(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(set-face-attribute 'default nil :height 90 :family "Ubuntu Mono")
(set-face-attribute 'diff-removed nil :background "#ff4444" :foreground "#000000")
(set-face-attribute 'diff-added nil :background "#115511" :foreground "#ffffff")

(add-to-list 'display-buffer-alist
             `("*compilation*" . ,init/open-buffer-in-frame))
(add-to-list 'display-buffer-alist
             `("*Async" . ,init/open-buffer-in-frame))
(add-to-list 'display-buffer-alist
             `("*grep*" . ,init/open-buffer-in-frame))

(defalias 'yes-or-no-p 'y-or-n-p)

;; Modes
(blink-cursor-mode -1)
(column-number-mode 1)
(global-hl-line-mode 1)
(line-number-mode 1)
(show-paren-mode 1)

;; Hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-hook
 'emacs-startup-hook
 (lambda ()
   (with-current-buffer "*scratch*"
     (hack-dir-local-variables-non-file-buffer))))
