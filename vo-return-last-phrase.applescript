delay 1

with timeout of 30 seconds
  tell application "VoiceOver"
    with transaction
      -- Attempt to return content of last phrase
      return content of last phrase
    end transaction
  end tell
end timeout