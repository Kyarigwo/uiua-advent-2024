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
      system:
	let
      pkgs = import nixpkgs {inherit system; };

      in {
        devShells.default = pkgs.mkShell {
	        buildInputs = [uiua.packages.${system}.default ];
	};
      }
    );
}
