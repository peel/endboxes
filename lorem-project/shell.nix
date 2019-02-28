{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [ direnv hello ];
  shellHook = ''
  eval $(direnv hook bash)
  direnv allow .
  '';
}
