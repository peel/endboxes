(require 'package)
(package-initialize 'noactivate)
(eval-when-compile
  (require 'use-package))

(use-package nix-sandbox)
(use-package direnv
  :config (direnv-mode))
