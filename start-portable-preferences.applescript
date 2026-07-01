#!/usr/bin/osascript

tell application "VoiceOver Utility"
	activate
end tell

tell application "System Events"
	tell process "VoiceOver Utility"
		set frontmost to true

		-- Wait for window
		repeat until exists window 1
			delay 0.2
		end repeat

		-- Open Portable Preferences
		click button "Portable Preferences" of toolbar 1 of window 1

		delay 0.5

		-- Set up portable preferences
		click button "Set Up Portable Preferences…" of window 1

		-- Wait for sheet
		repeat until exists sheet 1 of window 1
			delay 0.2
		end repeat

		tell sheet 1 of window 1
			-- Select mounted volume
			select row 1 of outline 1 of scroll area 1

			-- If multiple volumes are shown, replace the line above with:
			-- select (first row of outline 1 of scroll area 1 whose value of text field 1 is "VoiceOverPreferences")

			click button "Choose"
		end tell

		-- Wait for setup to finish
		repeat while exists sheet 1 of window 1
			delay 0.5
		end repeat

		delay 2

		quit
	end tell
end tell