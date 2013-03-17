(require 'ace-jump-mode)

(setq ace-jump-mode-case-fold nil)

(define-key evil-normal-state-map (kbd "SPC") 'evil-ace-jump-char-mode)
(define-key evil-normal-state-map (kbd "S-SPC") 'evil-ace-jump-word-mode)
(define-key evil-normal-state-map (kbd "C-SPC") 'evil-ace-jump-line-mode)

(dolist (mode '(evil-visual-state-map evil-operator-state-map))
  (define-key (symbol-value mode) (kbd "SPC") 'evil-ace-jump-char-mode)
  (define-key (symbol-value mode) (kbd "S-SPC") 'evil-ace-jump-word-mode)
  (define-key (symbol-value mode) (kbd "C-SPC") 'evil-ace-jump-char-direct-mode))

(evil-define-motion evil-ace-jump-char-mode (count)
  :type exclusive
  (ace-jump-mode 5)
  (recursive-edit))

(evil-define-motion evil-ace-jump-line-mode (count)
  :type line
  (ace-jump-mode 9)
  (recursive-edit))

(evil-define-motion evil-ace-jump-word-mode (count)
  :type exclusive
  (ace-jump-mode 1)
  (recursive-edit))

(evil-define-motion evil-ace-jump-char-direct-mode (count)
  :type inclusive
  (ace-jump-mode 5)
  (forward-char 1)
  (recursive-edit))

(add-hook 'ace-jump-mode-hook 'exit-recursive-edit)
