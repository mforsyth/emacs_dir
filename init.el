(defconst base-path "~/.emacs.d/")
(defconst init-path (concat base-path "init.d/"))
(defconst vendor-path (concat base-path "vendor/"))
(defconst lib-path (concat base-path "lib"))

;; vendor
(add-to-list 'load-path vendor-path)

(dolist (path (directory-files vendor-path t "^[[:alnum:]]"))
  (if (file-directory-p path) (add-to-list 'load-path path)))

;; lib
(add-to-list 'load-path lib-path)

(load-library "commands")
(load-library "macros")
(load-library "project")

;; init.d

(add-to-list 'load-path init-path)

(require 'org)
(org-babel-load-file (concat user-emacs-directory "config.org"))

(dolist (path (directory-files init-path t "^[[:alnum:]]"))
  (load-library (file-name-sans-extension (file-name-nondirectory path))))
