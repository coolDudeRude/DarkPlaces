#!/bin/env bash
set -euo pipefail

AWESOME_REPO="${AWESOME_REPO:-https://github.com/jothepro/doxygen-awesome-css.git}"
BASE_DOXYFILE="${BASE_DOXYFILE:-Doxyfile}"
BUILD_DIR="${BUILD_DIR:-.docs-build}"

HEADER_FILE=".github/header.html"
CONFIG_FILE=".github/doxygen-conf.m4"

THEME_DIR="$BUILD_DIR/doxygen-awesome-css"
MERGED="$BUILD_DIR/Doxyfile.merged"


die() { echo "error: $*" >&2; exit 1; }

for tool in doxygen git; do
    command -v "$tool" >/dev/null 2>&1 || die "'$tool' not found in PATH"
done
[ -f "$BASE_DOXYFILE" ] || die "$BASE_DOXYFILE not found - run this from the repository root"

DOXY_VER="$(doxygen --version | awk '{print $1}')"

mkdir -p "$BUILD_DIR"

if [ ! -f "$THEME_DIR/doxygen-awesome.css" ]; then
    rm -rf "$THEME_DIR"
    git clone --quiet --depth 1 "$AWESOME_REPO" "$THEME_DIR"
fi

cp "$BASE_DOXYFILE" "$MERGED"
m4 -D__DOXY_VER="$DOXY_VER" \
   -D__BUILD_DIR="$BUILD_DIR" \
   -D__HEADER_FILE="$HEADER_FILE" \
   -D__THEME_DIR="$THEME_DIR" \
   "$CONFIG_FILE" >> "$MERGED"
