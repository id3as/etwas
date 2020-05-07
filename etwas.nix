{ stdenv, coreutils }:

stdenv.mkDerivation {
  pname = "etwas";
  version = "0.1";

  src = ./.;

  phases = [
    "unpackPhase"
    "installPhase"
    "fixupPhase"
  ];

  buildInputs = [
    coreutils
  ];

  installPhase = ''
    mkdir -p ''${out}/bin
    cp ./etwas ''${out}/bin
  '';
}


