#!/usr/bin/env bash
set -eo pipefail

createPassword() {
  local plain=$1
  echo -n "$plain" | sha256sum | xxd -r -p | base64 | cut -c1-20
}

createPassword "${1:-$(head -c 10 /dev/urandom | tr -dc 'a-zA-Z0-9')}"
