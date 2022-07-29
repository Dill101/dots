try
	do shell script "ping -o -t 2 www.google.com"
	tell application "GeekTool Helper"
		tell its image geeklet "Wifi"
			set the image url to "file:///Users/dill/Documents/Wifi.png"
		end tell
	end tell
on error
	tell application "GeekTool Helper"
		tell its image geeklet "Wifi"
			set the image url to " "
		end tell
	end tell
end try
