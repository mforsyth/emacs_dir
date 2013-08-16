(require 'dizzee)

(dz-defservice zeus "zeus-wrapper"
               :args ("start")
               :cd command-line-default-directory)

(dz-defservice spork-cucumber "spork"
               :args ("cucumber")
               :cd command-line-default-directory)

(dz-defservice spork-rspec "spork"
               :args ("rspec")
               :cd command-line-default-directory)
