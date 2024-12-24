{
  description = "Advent 2024 Uiua solutions";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    uiua = {
        url = "github:uiua-lang/uiua";
        inputs.nixpkgs.follows = "nixpkgs";
      };
  };

  outputs = {
    nixpkgs,
    flake-utils,
    uiua,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};

        nativeBuildInputs = with pkgs; [ ];
        buildInputs = with pkgs; [ uiua.packages.${system}.default ];
      in {
        devShells.default = pkgs.mkShell {inherit nativeBuildInputs buildInputs;};
      }
    );
}