/*
Copies Safari's tabs to the clipboard as a markdown list of URL:s

Built on https://github.com/martijnengler/tools/blob/master/list-safari-tabs/safari-tabs-to-clipboard.applescript,
which was created by Martijn Engler (http://applecoach.nl)
*/
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