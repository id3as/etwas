let
  nixpkgs =
    import <nixpkgs> {
      overlays = [
        (import ./overlay.nix)
      ];
    };
in

with nixpkgs;

mkShell {
  buildInputs = [
    etwas
  ];
}
