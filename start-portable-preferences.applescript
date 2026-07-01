#!/usr/bin/osascript

tell application "VoiceOver Utility"
	activate
end tell

try
	tell application "System Events"
		tell process "VoiceOver Utility"
			set frontmost to true

			-- Wait for window
			repeat until exists window 1
				delay 0.2
			end repeat

			-- Open Portable Preferences
			click UI Element "Set Up..."
		end tell
	end tell
on error errMsg number errNum
	log errMsg
	log errNum
end try
