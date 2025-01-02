{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages = with pkgs.buildPackages; [
      kaitai-struct-compiler

      (python3.withPackages (p: with p; [
        pwntools
        kaitaistruct
        pyserial
      ]))
    ];
}
