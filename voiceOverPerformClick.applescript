delay 1

with timeout of 30 seconds
  tell application "VoiceOver"
    with transaction
      tell vo cursor to perform action
    end transaction
  end tell
end timeout