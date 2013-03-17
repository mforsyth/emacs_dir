(require 'feature-mode)

(setq feature-cucumber-command "cucumber -rfeatures -P -f pretty --drb {options} {feature}")

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(add-hook 'feature-mode-hook 'auto-fill-mode)
