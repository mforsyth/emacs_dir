(require 'org)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(setq org-agenda-files '("~/org"))
(setq org-blank-before-new-entry nil)
(setq org-agenda-skip-deadline-if-done t)
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-span 'day)
(setq org-clock-idle-time 10)
(setq org-clock-in-resume nil)
(setq org-clock-modeline-total 'today)
(setq org-clock-persist t)
(setq org-clock-report-include-clocking-task t)
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-log-into-drawer t)
(setq org-log-note-clock-out nil)
(setq org-mobile-directory "~/Dropbox/MobileOrg/")
(setq org-mobile-inbox-for-pull "~/org/mobile-notes.org")
(setq org-startup-folded 'content)
(setq org-todo-keywords '((sequence "TODO" "|" "DONE" "CANCELED")))
(setq org-tags-column -80)
(setq org-columns-default-format
      "%70ITEM(Item) %TODO(Status) %4Effort{:} %6CLOCKSUM(Current)")
(setq org-global-properties
      '(("Effort_ALL" . "0:15 0:30 1:00 2:00 4:00 8:00 16:00")))

(global-set-key "\C-cop" 'org/open-personal-org)
(global-set-key "\C-cow" 'org/open-project-org)

(defun org/open-personal-org ()
  (interactive)
  (find-file "~/org/personal.org"))

(defun org/open-project-org ()
  (interactive)
  (find-file (concat "~/org/"
                     (file-name-nondirectory
                      (directory-file-name command-line-default-directory))
                     ".org")))
