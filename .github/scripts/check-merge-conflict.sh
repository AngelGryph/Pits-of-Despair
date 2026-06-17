#!/usr/bin/env bash
set -euo pipefail

function main() {
  if [ $(grep -E "^={7}$" $1 || false) ]; then
    echo "merge conflict in ${1}" && exit 1;
  fi
}

main $@
