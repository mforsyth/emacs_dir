(require 'evil)
(require 'surround)

(setq-default evil-shift-width 2)
(setq evil-cross-lines t)
(setq evil-emacs-state-cursor '("orange" bar))
(setq evil-intercept-esc 'always)

(evil-mode 1)

(define-key evil-insert-state-map "\C-p" 'previous-line)
(define-key evil-insert-state-map "\C-n" 'next-line)
(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-insert-state-map "\C-k" 'kill-line)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-d" 'delete-char)

(define-key evil-normal-state-map "+" 'universal-argument)
(define-key evil-normal-state-map "-" 'negative-argument)
(define-key evil-normal-state-map "\C-u" 'evil-scroll-up)
(define-key evil-normal-state-map "\M-," 'helm-imenu)
(define-key evil-normal-state-map "\M-." 'helm-etags-select)
(define-key evil-normal-state-map "|" 'align)
(define-key evil-normal-state-map "\\" 'evil-buffer)

(define-key evil-visual-state-map "+" 'universal-argument)
(define-key evil-visual-state-map "-" 'negative-argument)

(define-key evil-emacs-state-map "\C-w" 'evil-delete-backward-word)

(evil-set-initial-state 'grep-mode 'emacs)
(evil-set-initial-state 'term-mode 'emacs)
(evil-set-initial-state 'inferior-ruby-mode 'emacs)
(evil-set-initial-state 'magit-commit-mode 'emacs)
(evil-set-initial-state 'magit-branch-manager-mode 'emacs)
(evil-set-initial-state 'nrepl-mode 'emacs)

(global-surround-mode 1)
