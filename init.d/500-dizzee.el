(require 'dizzee)

(dz-defservice guard "guard"
               :args ("--no-bundler-warning")
               :cd command-line-default-directory)

(dz-defservice zeus "zeus-wrapper"
               :args ("start")
               :cd command-line-default-directory)

(dz-defservice rails-server "bin/rails-server"
               :cd command-line-default-directory)

(dz-defservice-group rails-project (rails-server zeus))

(dz-defservice-group gem-project (guard))

(dz-defservice ring-server "lein"
               :args ("ring" "server")
               :cd command-line-default-directory)

(dz-defservice cljsbuild "lein"
               :args ("cljsbuild" "auto")
               :cd command-line-default-directory)

(dz-defservice-group cljx-project (ring-server cljsbuild))
