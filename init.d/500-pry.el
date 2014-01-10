(require 'ruby-mode)
(require 'inf-ruby)

(add-to-list 'inf-ruby-implementations '("pry" . "pry"))

(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-first-prompt-pattern "^\\[[0-9]+\\] pry\\((.*)\\)> *")
(setq inf-ruby-prompt-pattern "^\\[[0-9]+\\] pry\\((.*)\\)[>*\"'] *")
