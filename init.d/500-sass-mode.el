(autoload 'sass-mode "sass-mode")
(require 'sass-mode)

(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.sass.erb$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

(add-hook 'sass-mode-hook 'fci-mode)
