(autoload 'fci-mode "fill-column-indicator")

(setq fci-rule-width 1)
(setq fci-rule-color "#303030")

(dolist (hook '(clojure-mode-hook))
  (add-hook hook 'fci-mode))
