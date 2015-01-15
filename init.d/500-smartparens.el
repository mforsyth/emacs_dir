(require 'smartparens-config)
;; (require 'smartparens-ruby)

;; (smartparens-global-mode)
;; (show-smartparens-global-mode t)

;; (setq sp-autoescape-string-quote nil)

(dolist (hook '(emacs-lisp-mode-hook
                inferior-emacs-lisp-mode-hook
                lisp-interaction-mode-hook
                scheme-mode-hook
                lisp-mode-hook
                eshell-mode-hook
                slime-repl-mode-hook
                clojure-mode-hook
                cider-repl-mode-hook
                common-lisp-mode-hook))

  (add-hook hook 'smartparens-strict-mode)
  (add-hook hook 'sp-use-smartparens-bindings))
