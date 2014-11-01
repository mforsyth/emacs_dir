;; Ruby
(require 'flymake)
(require 'enh-ruby-mode)

;;; File extensions
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("^Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("^Thorfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.watchr$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rjs$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl$" . enh-ruby-mode))

(add-to-list 'special-display-buffer-names "*rake*")
(add-to-list 'same-window-buffer-names "*ruby*")

;;; Compilation
(add-to-list
 'compilation-error-regexp-alist
 '("[[:blank:]]# \\(\\.[^:]+\\):\\([0-9]+\\)\\(:in\\)?" 1 2 nil nil 2))

;; Hooks
(add-hook 'enh-ruby-mode-hook
          '(lambda ()
	     ;; Don't want flymake mode for ruby regions in rhtml files and also
	     ;; on read only files
	     (if (and (not (null buffer-file-name))
                      (file-writable-p buffer-file-name))
		 (flymake-mode))))

(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (define-key enh-ruby-mode-map (kbd "RET") 'newline-and-indent)))

;; Init hooks
(add-hook 'enh-ruby-mode-hook 'fci-mode)
(add-hook 'enh-ruby-mode-hook 'smartparens-mode)
