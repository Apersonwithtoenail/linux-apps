#!/usr/bin/env bash
set -e
for id in quillinks paperruner asciigifer lyrical; do
    rm -f "$HOME/.local/bin/$id"
    rm -f "$HOME/.local/share/applications/$id.desktop"
    rm -f "$HOME/.local/share/icons/hicolor/scalable/apps/$id.svg"
done
update-desktop-database "$HOME/.local/share/applications" 2>/dev/null || true
gtk-update-icon-cache -f -t "$HOME/.local/share/icons/hicolor" 2>/dev/null || true
echo "✅ All removed"
