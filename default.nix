{ pkgs ? import <nixpkgs> {} }:

let
  myEmacsConfig = ./default.el;
  emacsWithPackages = (pkgs.emacsPackagesNgGen pkgs.emacs).emacsWithPackages;
in
  emacsWithPackages (epkgs: (with epkgs.melpaPackages; [
    (pkgs.runCommand "default.el" {} ''
    mkdir -p $out/share/emacs/site-lisp
    cp ${myEmacsConfig} $out/share/emacs/site-lisp/default.el
    '')
    
    use-package
    direnv
    nix-sandbox
  ]))
