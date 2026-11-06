#!/usr/bin/env bash
set -euo pipefail

greet() {
  local name="${1:-World}"
  echo "Hello, $name!"
}

add() {
   local a="$1"
   local b="$2"
   echo "$((a + b))"
}

greet 
greet "Linux Learner"
result=$(add 15 27)
echo "15 + 27 = $result"
