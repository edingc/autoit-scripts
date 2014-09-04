#comments-start
# ------------------------------------------------------------------------
# NAME: launch-screensaver.au3
# AUTHOR: Cody Eding
# DATE: 8/10/14
#
# COMMENTS: This script kills the current browser session and launches 
# the Windows screensaver. Compile to .exe and rename to .scr to use as a
# replacement screensaver within Windows.
#
# ------------------------------------------------------------------------
#comments-end

Run( "taskkill.exe /IM chrome.exe" )
Sleep ( 5000 )
Run( "C:\Windows\System32\logon.scr -s" )