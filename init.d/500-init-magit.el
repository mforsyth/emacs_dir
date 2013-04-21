(require 'magit)

(setq magit-revert-item-confirm t)
(setq magit-repo-dirs '("~/projects/"))

(dolist (mode
         (list magit-log-mode-map
               magit-status-mode-map
               magit-commit-mode-map
               magit-branch-manager-mode-map))
  (define-key mode "j" 'magit-goto-next-section)
  (define-key mode "k" 'magit-goto-previous-section)
  (define-key mode "/" 'evil-search-forward)
  (define-key mode "?" 'evil-search-backward)
  (define-key mode "n" 'evil-search-next)
  (define-key mode "N" 'evil-search-previous)
  (define-key mode "d" 'magit-discard-item))

(add-to-list 'display-buffer-alist
             '("^\\*magit-edit-log\\*$" . (display-buffer-pop-up-window . nil)))

(defun magit-setup ()
  (interactive)
  (let ((current (current-buffer))
        (bcommit (get-buffer-create "*magit-commit*"))
        (blog (get-buffer-create "*magit-log*")))
    (display-buffer-other-frame bcommit)
    (display-buffer-other-frame blog)
    (with-current-buffer blog (magit-log))
    (with-current-buffer current (magit-status "."))))

(add-hook 'magit-log-edit-mode-hook
          (lambda () (setq fill-column 70)))
