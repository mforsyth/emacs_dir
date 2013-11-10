(require 'dizzee)

(dz-defservice guard "guard"
               :args ("--no-bundler-warning")
               :cd command-line-default-directory)

(dz-defservice zeus "zeus-wrapper"
               :args ("start")
               :cd command-line-default-directory)

(dz-defservice rails-server "rails-server"
               :cd command-line-default-directory)

(dz-defservice-group rails-project (rails-server guard zeus))

(dz-defservice-group gem-project (guard))
