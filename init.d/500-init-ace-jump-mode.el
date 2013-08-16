(require 'ace-jump-mode)

(setq ace-jump-mode-case-fold nil)

(dolist (mode '(evil-normal-state-map evil-visual-state-map evil-operator-state-map))
  (define-key (symbol-value mode) (kbd "SPC") 'evil-ace-jump-word-mode)
  (define-key (symbol-value mode) (kbd "C-SPC") 'evil-ace-jump-char-mode)
  (define-key (symbol-value mode) (kbd "S-SPC") 'evil-ace-jump-word-mode))
