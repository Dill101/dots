use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

set Status to do shell script "/opt/homebrew/bin/blueutil -p"

if Status is equal to "1" then
	tell application "GeekTool Helper"
		tell its image geeklet "Bluetooth"
			set the image url to "file:///Users/dill/Documents/Bluetooth.png"
		end tell
	end tell
else
	tell application "GeekTool Helper"
		tell its image geeklet "Bluetooth"
			set the image url to " "
		end tell
	end tell
end if





