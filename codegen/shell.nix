{ pkgs ? import <nixpkgs> {} }:

let
  source = pkgs.fetchgit {
    inherit (pkgs.lib.importJSON ./openapi3-code-generator.json) url rev sha256 ;
  } ;
  openapi3-code-generator = import (source + "/default.nix") ;
in pkgs.mkShell {
  packages = [openapi3-code-generator] ;
}
