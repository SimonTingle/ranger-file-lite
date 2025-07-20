#!/bin/bash

# Set base directory
BASE="/Users/simontingle/Desktop/WORK/PROGRAMMING/TEST_PROJECTS/RANGER_FILE"

echo "Creating RANGER_FILE app in: $BASE"

# Create folder structure
mkdir -p "$BASE/config/ranger"

# Create run.sh
cat > "$BASE/run.sh" << 'EOF'
#!/bin/bash
# Launches ranger with custom lightweight config
DIR="$(cd "$(dirname "$0")" && pwd)"
ranger --confdir "$DIR/config/ranger"
EOF
chmod +x "$BASE/run.sh"

# Create README.md
cat > "$BASE/README.md" << 'EOF'
# RANGER Lite App

A minimal, mouse-enabled terminal file manager using ranger.

## Features

- Mouse click + scroll
- Lightweight (no dependencies)
- File preview for text/code
- Custom run script (no global install needed)

## Launch

```bash
./run.sh