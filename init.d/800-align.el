(add-hook
 'align-load-hook
 (lambda ()
   (add-to-list
    'align-rules-list
    '(symbol-value-alignment
      (regexp . ":\\(\\s-*\\)")
      (group . 1)
      (modes . '(ruby-mode coffee-mode sass-mode yaml-mode))
      (repeat . nil)))
   (add-to-list
    'align-rules-list
    '(symbol-value-alignment
      (regexp . "=")
      (group . 1)
      (modes . '(ruby-mode coffee-mode sass-mode yaml-mode))
      (repeat . nil)))
   ))
