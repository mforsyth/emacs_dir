(setenv "PAGER"      "/bin/cat")
(setenv "CDPATH"     ".:~/projects")
(setenv "RBENV_ROOT" "/opt/rbenv")
(setenv "PATH"       (concat "~/bin:"
                             (getenv "RBENV_ROOT") "/bin:"
                             (getenv "RBENV_ROOT") "/shims:"
                             (getenv "PATH")))
