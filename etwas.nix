{ stdenv

, makeWrapper

, coreutils
, patchelf
, gnused
, gnugrep
, findutils
, nix
}:

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
    makeWrapper
  ];

  installPhase = ''
    mkdir -p ''${out}/bin
    cp ./etwas ''${out}/bin

    wrapProgram \
      $out/bin/etwas \
      --prefix PATH : ${stdenv.lib.makeBinPath [
        coreutils
        patchelf
        gnused
        gnugrep
        findutils
        nix
      ]}
  '';
}


