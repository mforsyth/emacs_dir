(setenv "PAGER"      "/bin/cat")
(setenv "CDPATH"     ".:~/projects")
(setenv "RBENV_ROOT" "/opt/rbenv")
(setenv "EDITOR"     "~/bin/editor")
(setenv "PATH"       (concat "~/bin:"
                             (getenv "RBENV_ROOT") "/bin:"
                             (getenv "RBENV_ROOT") "/shims:"
                             (getenv "PATH")))
