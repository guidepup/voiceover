#!/usr/bin/osascript

delay 1

with timeout of 30 seconds
	tell application "VoiceOver"
		with transaction
			quit
		end transaction
	end tell
end timeout
