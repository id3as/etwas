{ pkgs ? import <nixpkgs> { } }:

rec {
  etwas = pkgs.callPackage ./etwas.nix {};
}

