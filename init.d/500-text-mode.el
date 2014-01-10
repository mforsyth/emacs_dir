(add-hook
 'text-mode-hook
  (lambda ()
    (setq fill-column 80)
    (auto-fill-mode 1)))
