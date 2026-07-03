delay 1

with timeout of 30 seconds
  tell application "VoiceOver"
    with transaction
      -- Ensure VoiceOver is focused
      activate
    end transaction
  end tell
end timeout