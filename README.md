safari-tabs-to-markdown
=======================

Script which turns the open tabs in the current Safari window into a Markdown list of URL:s in the clipboard. Suitable for saving as a service.

The original version was in Applescript. It has now been ported to Javascript (picking up a new feature in the process), but the old version remains available for reference and backward compatibility (scripting in Javascript is a new feature in 10.10). The Applescript version is not being kept up to date with the Javascript version.

If the title of a link contains the sequence " - ", the text will be split and the part to the right of the hyphen will be output after the link.

Upon running, the script will ask if you want to "Use link title list?" If you choose to do so, an input will appear accepting a simple Markdown list of titles. These will replace the titles of the actual web pages, and will be split at hyphens as described above. If the list of titles is shorter than the number of pages, the "overflowing" links will use their page titles.

This script builds on [a previous script](https://github.com/martijnengler/tools/blob/master/list-safari-tabs/safari-tabs-to-clipboard.applescript) which was created by [Martijn Engler](http://applecoach.nl).

I built this version to support my workflow for creating shownotes for the podcast [Kodsnack](http://www.kodsnack.se).

Bonus content
≈≈≈≈≈≈≈≈≈≈≈≈≈

Also included is "Link front Safari tab", a script I end up using even more often nowadays. Saved as a service and assigned a keyboard shortcut, i use it to make a Markdown link surrounding the selected text. The URL is the one in the frontmost tab in Safari.