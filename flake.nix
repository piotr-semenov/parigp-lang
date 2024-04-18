{
  description = "Builds TextMate grammar for latest version of PARI/GP";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      current_system = "x86_64-linux";
    in
      {
        packages.${current_system}.default =

        with import nixpkgs { system = current_system; };
        let vscode_tmgrammar_test =
          buildNpmPackage rec {
            pname = "vscode-tmgrammar-test";
            version = "0.1.3";

            src = fetchFromGitHub {
              owner = "PanAeon";
              repo = pname;
              rev = "v${version}";
              hash = "sha256-p7vHG+VXZOcbhteJ1w/0MbGnt/gY/hk1IuesXUUXUZc=";
            };

            npmDepsHash = "sha256-MWAQiPt4ajNMDdGaRZ730zsV4KB0AMw4CLbIMAwmFJE=";
          };
          newer_pkgs =
            import (fetchTarball {
              url = "https://github.com/NixOS/nixpkgs/archive/9b570f04bcbb8b2a7f6512708042229519947a94.tar.gz";
              sha256 = "sha256:1pdx2sc3854narclk8pmxdb1mffv7izhqd7fdfg5brqxr3x00z04";
            }) {};

          in
            stdenv.mkDerivation {
              name = "parigp.tmGrammar";
              buildInputs = [
                jq
                yq-go
                gnumake
                gnused
                python39
                jinja2-cli

                newer_pkgs.pari

                vscode_tmgrammar_test
              ];
              src = self;
              buildPhase = "make build";
              checkPhase = "make test";
              installPhase = "mkdir -p $out; cp syntaxes/* $out/";
            };
      };
}
