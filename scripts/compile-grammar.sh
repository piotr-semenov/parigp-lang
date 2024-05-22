#!/usr/bin/env nix-shell
#!nix-shell ../shell.nix -i bash
# compile-grammar.sh - Builds TextMate grammar with help of Nix.

# shellcheck shell=sh


scriptPath=$(readlink -f "$0")
rootDir=$(dirname "${scriptPath%/*}")

statix check
nix flake check --impure "$rootDir"

outDir="$(nix build --impure \
                    --no-link \
                    --print-build-logs \
                    --print-out-paths "$rootDir")"
cp "$outDir"/parigp* "$rootDir/syntaxes/"

output=$(nix develop --check --impure "$rootDir")
echo "$output"
output=$(echo "$output" | grep '✖.*failed')
if [ -n "$output" ]; then
    exit 1
fi
