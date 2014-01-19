(require 'evil)
(require 'surround)

;; === Cider ===

(evil-set-initial-state 'cider-repl-mode 'emacs)

;; === Dired ===

(evil-set-initial-state 'dired-mode 'emacs)

;; === Magit ===

(evil-set-initial-state 'git-commit-mode 'insert)
(evil-set-initial-state 'git-rebase-mode 'emacs)

(dolist (mode (list magit-status-mode-map
                    magit-log-mode-map
                    magit-commit-mode-map))
  (define-key mode "/" 'evil-search-forward)
  (define-key mode "?" 'evil-search-backward)
  (define-key mode "n" 'evil-search-next)
  (define-key mode "N" 'evil-search-previous)
  (define-key mode "\C-d" 'evil-scroll-down)
  (define-key mode "\C-u" 'evil-scroll-up)
  (define-key mode "\C-f" 'evil-scroll-page-down)
  (define-key mode "\C-b" 'evil-scroll-page-up)
  (define-key mode "j" 'magit-goto-next-section)
  (define-key mode "k" 'magit-goto-previous-section))

(define-key magit-status-mode-map "d" 'magit-discard-item)

(define-key git-rebase-mode-map "j" 'forward-line)
(define-key git-rebase-mode-map "k" 'git-rebase-backward-line)

;; === Evil ===

(setq evil-emacs-state-cursor '("orange" bar))

(setq-default evil-shift-width 2)

(define-key evil-normal-state-map "+" 'universal-argument)
(define-key evil-normal-state-map "-" 'negative-argument)
(define-key evil-normal-state-map "\C-u" 'evil-scroll-up)

(define-key evil-visual-state-map "+" 'universal-argument)
(define-key evil-visual-state-map "-" 'negative-argument)

(evil-mode 1)
(global-surround-mode 1)
