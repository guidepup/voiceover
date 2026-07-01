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
			click UI Element 10 of splitter group 1 of window "VoiceOver Utility"

			delay 0.5

			-- Wait for sheet
			repeat until exists sheet 1 of window 1
				delay 0.2
			end repeat

			tell sheet 1 of window 1
				tell table 1 of scroll area 1
					repeat with r in rows
						if exists static text "VoiceOverPreferences" of r then
							select r
							exit repeat
						end if
					end repeat
				end tell

				click UI Element "OK"
			end tell


			-- Wait for setup to finish
			repeat while exists sheet 1 of window 1
				delay 0.5
			end repeat

			delay 2

			quit
		end tell
	end tell
on error errMsg number errNum
	log errMsg
	log errNum
end try
