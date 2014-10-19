(*
Copies Safari's tabs to the clipboard as a markdown list of URL:s

Built on https://github.com/martijnengler/tools/blob/master/list-safari-tabs/safari-tabs-to-clipboard.applescript,
which was created by Martijn Engler (http://applecoach.nl)
*)
tell application "Safari"
	set theWindow to front window
	set theTabs to theWindow's tabs
	set linkList to ""
	repeat with eachTab in theTabs
		set theURL to "" & URL of eachTab
		set theURL to my replace_chars(theURL, "(", "%28")
		set theURL to my replace_chars(theURL, ")", "%29")
		set theName to my replace_chars(name of eachTab, " - Wikipedia, the free encyclopedia", "")
		set theName to my replace_chars(name of eachTab, " Ð Wikipedia", "")
		set linkList to linkList & "* [" & theName & "](" & theURL & ")
"
	end repeat
	set the clipboard to the text of linkList
end tell

on replace_chars(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end replace_chars