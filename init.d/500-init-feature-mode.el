(require 'feature-mode)

(setq feature-cucumber-command "bin/cucumber -rfeatures -P -f pretty {options} {feature}")

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(add-hook 'feature-mode-hook 'auto-fill-mode)
(add-hook 'feature-mode-hook 'fci-mode)
