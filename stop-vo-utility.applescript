#!/usr/bin/osascript

delay 1

tell application "System Events"
	tell process "VoiceOver Utility"
		quit
	end tell
end tell
