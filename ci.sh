#!/usr/bin/env bash
set -euo pipefail

git rev-parse --show-toplevel >/dev/null
cmake -S . -B build
cmake --build build --config Release
ctest --test-dir build -C Release --output-on-failure
