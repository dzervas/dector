{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = with pkgs; [
    kaitai-struct-compiler
    pipenv
  ];

  shellHook = ''
    echo "Building Kaitai Struct Python package"
    kaitai-struct-compiler -t python --no-auto-read --python-package busmail --outdir busmail structs/busmail.ksy
    echo "from .primitives import Primitives" >> busmail/busmail_mail.py # Hack to fix import
  '';
}

# To clean up the txt files use:
# sed -E '/^(© 2006 Dialog Semiconductor B.V.|semiconductor.com|Company Confidential|[0-9]+|www.dialog-|www.dialog-semiconductor.com|)$/d' .docs/NatalieFpCvm_v1133.txt
