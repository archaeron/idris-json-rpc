{ pkgs ? import ./nix {} }:
let
  builder = import ./default.nix { inherit pkgs; };
in
    pkgs.mkShell
        { buildInputs = builder.buildInputs;
        }
