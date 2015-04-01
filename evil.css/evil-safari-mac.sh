#!/bin/sh

base="$HOME/Library/Application Support/Safari"
file="$base/evil.css"

echo "Downloading evil.css..."
mkdir -p "$base"
curl -L --progress-bar 'https://github.com/RetroCraft/evil.css/raw/master/evil.css' > "$file"
echo "Download complete... killing Safari..."
osascript -e 'tell application "Safari"' -e 'quit' -e 'end tell'
sleep 1
echo "Setting defaults values..."
defaults write "com.apple.Safari" "UserStyleSheetEnabled" "1"
defaults write "com.apple.Safari" "UserStyleSheetLocationURLString" "$file"
defaults write "com.apple.Safari" "WebKitUserStyleSheetLocationPreferenceKey" "$file"
defaults write "com.apple.Safari" "WebKitUserStyleSheetEnabledPreferenceKey" "1"
echo "Restarting Safari..."
open -a "Safari" "http://www.apple.ca"
echo "ALL DONE! Exiting terminal."
exit
