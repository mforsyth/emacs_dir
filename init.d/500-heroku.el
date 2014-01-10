(defun heroku/console (app impl)
  (interactive "ss")
  (run-ruby (concat "heroku run console --app " app) impl))
