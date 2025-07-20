#!/bin/sh
# Minimal previewer

case "$1" in
  *.txt|*.md|*.py|*.sh|*.c|*.cpp)
    cat "$1"
    ;;
  *)
    echo "No preview available."
    ;;
esac
