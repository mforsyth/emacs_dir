(require 'clojure-mode)
(require 'cider)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(dolist (hook '(clojure-mode-hook cider-repl-mode-hook))
  (add-hook hook 'subword-mode)
  (add-hook hook 'rainbow-delimiters-mode))

(dolist (hook '(clojure-mode-hook))
  (add-hook hook 'fci-mode))

(defun clj-pprint() (interactive)
  (insert "(./p [])")
  (backward-char 2)
)
(add-hook 'clojure-mode-hook  (lambda ()
                                (define-key clojure-mode-map (kbd "C-c p") 'clj-pprint)
                                (paredit-mode)))

(defun open-lein-profile () (interactive)
  (find-file "~/.lein/profiles.clj")
  )
(global-set-key (kbd "C-c mel") 'open-lein-profile)
(fset 'visit-cider-repl
   [?\C-x ?o ?\C-x ?b ?r ?e ?p ?l return])
(global-set-key (kbd "C-c vc") 'visit-cider-repl)
