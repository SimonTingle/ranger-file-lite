#!/bin/bash

# Set base directory
BASE="/Users/simontingle/Desktop/WORK/PROGRAMMING/TEST_PROJECTS/RANGER_FILE"

echo "Fixing missing ranger config files..."

# Write rc.conf
cat > "$BASE/config/ranger/rc.conf" << 'EOF'
set mouse_enabled true
set show_hidden true
set preview_images false
set preview_script ~/.config/ranger/scope.sh

set draw_borders true
set use_preview_script true
EOF

# Write rifle.conf
cat > "$BASE/config/ranger/rifle.conf" << 'EOF'
ext pdf, has evince, X, flag f = evince -- "$@"
ext png|jpg|jpeg|bmp, has feh, X, flag f = feh -- "$@"
ext mp4|mkv, has mpv, X, flag f = mpv -- "$@"
EOF

# Write scope.sh
cat > "$BASE/config/ranger/scope.sh" << 'EOF'
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
EOF

chmod +x "$BASE/config/ranger/scope.sh"

echo "✅ All ranger config files restored!"