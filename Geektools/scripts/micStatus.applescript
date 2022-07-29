use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

set currentVolume to output volume of (get volume settings)
	
if currentVolume > 1 then
	tell application "GeekTool Helper"
        	tell its image geeklet "Mic"
                	set the image url to "file:///Users/dill/Documents/Mic.png"
                end tell
        end tell	
else
	tell application "GeekTool Helper"
                tell its image geeklet "Mic"
                        set the image url to " "
                end tell
        end tell
end if

