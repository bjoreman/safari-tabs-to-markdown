tell application "Safari"
	set theWindow to front window
	set theTabs to theWindow's tabs --of every window
	set result to ""
	repeat with eachTab in theTabs
		set result to result & "* [" & name of eachTab & "](" & URL of eachTab & ")
"
	end repeat
	set the clipboard to the text of result
end tell