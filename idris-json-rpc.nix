{ build-idris-package
, fetchFromGitHub
, lib
, nix-gitignore
, effects
, lightyear
}:
build-idris-package  {
  name = "idris-json-rpc";
  version = "0.0.1";

  src = nix-gitignore.gitignoreSourcePure [ ./.gitignore ] ./.;

  idrisDeps = [ effects lightyear ];

  meta = {
    description = "JSON-RPC 2.0 in Idris ";
    homepage = "https://github.com/defanor/idris-json-rpc";
    license = lib.licenses.agpl3;
    maintainers = [ ];
  };
}