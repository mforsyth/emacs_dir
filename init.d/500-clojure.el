(require 'clojure-mode)
(require 'cider)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(dolist (hook '(clojure-mode-hook cider-repl-mode-hook))
  (add-hook hook 'subword-mode)
  (add-hook hook 'rainbow-delimiters-mode))

(dolist (hook '(clojure-mode-hook))
  (add-hook hook 'fci-mode))
