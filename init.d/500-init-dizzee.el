(require 'dizzee)

(dz-defservice guard "guard"
               :cd command-line-default-directory)

(dz-defservice zeus "zeus-wrapper"
               :args ("start")
               :cd command-line-default-directory)

(dz-defservice-group rails-project (zeus guard))

(dz-defservice-group gem-project (guard))
