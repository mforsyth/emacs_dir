(defvar rails/root command-line-default-directory
  "The root of the current rails project")

(defvar rails/project-name
  (file-name-nondirectory
   (directory-file-name command-line-default-directory))
  "The name of the current rails project")

(global-set-key "\C-ccd" 'inf-ruby-console-auto)

(global-set-key "\C-cla" 'rails/log-acceptance-test)
(global-set-key "\C-clt" 'rails/log-test)
(global-set-key "\C-cld" 'rails/log-development)

(global-set-key "\C-cq"  'rails/sql)

(defun rails/log-development ()
  (interactive)
  (rails/tail-log "development" t))

(defun rails/log-test ()
  (interactive)
  (rails/tail-log "test" t))

(defun rails/log-acceptance-test ()
  (interactive)
  (rails/tail-log "acceptance_test" t))

(defun rails/sql ()
  (interactive)
  (let ((sql-database rails/project-name))
    (rails/eval '(sql-postgres))))

(defun rails/tail-log (file &optional eob)
  (interactive)
  (let ((default-directory rails/root))
    (find-file (concat "log/" file ".log"))
    (setq buffer-read-only t)
    (auto-revert-tail-mode 1)
    (if eob (end-of-buffer))))

(defun rails/eval (command)
  (let ((default-directory command-line-default-directory)
        (pop-up-windows nil))
    (eval command)))
