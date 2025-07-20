#!/bin/bash
# Launches ranger with custom lightweight config
DIR="$(cd "$(dirname "$0")" && pwd)"
ranger --confdir "$DIR/config/ranger"
