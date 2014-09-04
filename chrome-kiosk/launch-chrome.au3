#comments-start
# ------------------------------------------------------------------------
# NAME: launch-chrome.au3
# AUTHOR: Cody Eding
# DATE: 8/10/14
#
# COMMENTS: This while loop ensures that Google Chrome is always running.
# This is very useful in a kiosk situation where the browser should stay
# open at all times.
#
# ------------------------------------------------------------------------
#comments-end

While 1
	; 32-bit OS (assuming Chrome is 32-bit)
	If Not ProcessExists( "chrome.exe" ) Then Run( "C:\Program Files\Google\Chrome\Application\chrome.exe --incognito --start-maximized --disable-extensions" )
	; 64-bit OS (assuming Chrome is 32-bit)
	; If Not ProcessExists( "chrome.exe" ) Then Run( "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --incognito --start-maximized --disable-extensions" )
WEnd
