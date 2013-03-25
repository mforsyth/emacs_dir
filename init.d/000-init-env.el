(setenv "CDPATH"     ".:~/projects")
(setenv "EDITOR"     "~/bin/editor")
(setenv "LEIN_HOME"  "/opt/lein")
(setenv "PAGER"      "/bin/cat")
(setenv "RBENV_ROOT" "/opt/rbenv")
(setenv "PATH"       (concat "~/bin:"
                             (getenv "LEIN_HOME")  "/bin:"
                             (getenv "RBENV_ROOT") "/bin:"
                             (getenv "RBENV_ROOT") "/shims:"
                             (getenv "PATH")))
