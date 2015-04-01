#!/bin/sh

base="$HOME/Library/Application Support/Safari"
file="$base/evil.css"

echo "Uninstalling evil.css... killing Safari"
osascript -e 'tell application "Safari"' -e 'quit' -e 'end tell'
echo "Deleting evil.css..."
rm "$file"
echo "Setting defaults values..."
defaults write "com.apple.Safari" "WebKitUserStyleSheetEnabledPreferenceKey" "0"
defaults write "com.apple.Safari" "UserStyleSheetEnabled" "0"
echo "Restarting Safari..."
open -a "Safari" "http://www.apple.ca"
echo "ALL DONE! Exiting terminal."
exit
