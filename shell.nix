{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  NIX_CONFIG = "experimental-features = nix-command flakes";
  nativeBuildInputs = with pkgs; [
    git
    nix
  ];
}