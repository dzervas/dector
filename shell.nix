{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages = with pkgs.buildPackages; [
      kaitai-struct-compiler
      python3Packages.pwntools
      python3Packages.kaitaistruct
    ];
}
