#!/usr/bin/env bash

set -e

DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

nix-shell --run "openapi3-code-generator-exe -o '$DIR/tmp' --package-name mock-server-client --do-not-generate-stack-project --module-name MockServer '$DIR/mock-server-openapi.yaml'"
mv "$DIR/tmp/mock-server-client.cabal" "$DIR/../"
rm -rf "$DIR/../src"
mv "$DIR/tmp/src" "$DIR/../"
rm -rf "$DIR/tmp"
