#!/usr/bin/env nix-shell
#!nix-shell ../shell.nix -i bash
# compile-grammar.sh - Builds TextMate grammar with help of Nix.

# shellcheck shell=sh
set -e


scriptPath=$(readlink -f "$0")
rootDir=$(dirname "${scriptPath%/*}")

statix check
nix flake check --impure "$rootDir"

cp "$(nix build --impure \
                --no-link \
                --print-out-paths "$rootDir")"/parigp* "$rootDir/syntaxes/"
