(require 'haskell-mode-autoloads)

(autoload 'haskell-mode "haskell-mode")

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'autopair-mode)
