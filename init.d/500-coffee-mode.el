(autoload 'coffee-mode "coffee-mode")

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(setq coffee-tab-width 2)

(add-hook
 'coffee-mode-hook
 (lambda ()
   (set (make-local-variable 'tab-width) 2)))

(add-hook 'coffee-mode-hook 'fci-mode)

(add-hook 'coffee-mode-hook
          '(lambda ()
             (define-key coffee-mode-map (kbd "RET") 'newline-and-indent)))
