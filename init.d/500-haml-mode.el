(autoload 'haml-mode "haml-mode")

(add-to-list 'auto-mode-alist '("\\.hamlc$" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(add-hook 'haml-mode-hook 'fci-mode)
