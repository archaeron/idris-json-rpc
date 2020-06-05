{ sources ? import ./nix/sources.nix
, pkgs ? import ./nix { inherit sources; }
}:
    pkgs.idrisPackages.callPackage ./idris-json-rpc.nix { }