{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages = with pkgs.buildPackages; [
      kaitai-struct-compiler

      (python3.withPackages (p: with p; [
        pwntools
        kaitaistruct
        pyserial
        openpyxl
      ]))
    ];
}

# To clean up the txt files use:
# sed -E '/^(© 2006 Dialog Semiconductor B.V.|semiconductor.com|Company Confidential|[0-9]+|www.dialog-|www.dialog-semiconductor.com|)$/d' .docs/NatalieFpCvm_v1133.txt
