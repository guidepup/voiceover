#!/usr/bin/osascript

delay 1

tell application "VoiceOver Utility"
	activate
end tell

tell application "System Events"
	tell process "VoiceOver Utility"
		set frontmost to true

		repeat until exists window 1
			delay 1
		end repeat

		click UI Element "Set Up…" of splitter group 1 of window "VoiceOver Utility"

		delay 2

		tell sheet 1 of window 1
			tell table 1 of scroll area 1
				repeat with r in rows
					if exists static text "VoiceOverPreferences" of r then
						select r
						exit repeat
					end if
				end repeat
			end tell

			delay 2

			click UI Element "OK"
		end tell

		delay 2

		quit
	end tell
end tell
