delay 1

with timeout of 30 seconds
  tell application "VoiceOver"
    -- See if VoiceOver is running
    return running
  end tell
end timeout