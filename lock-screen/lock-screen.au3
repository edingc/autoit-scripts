#comments-start
# ------------------------------------------------------------------------
# NAME: lock-screen.au3
# AUTHOR: Cody Eding
# ADAPTED FROM: http://www.autoitscript.com/forum/topic/151184-cant-lock-screen-with-sendl/
# DATE: 9/4/14
#
# COMMENTS: This script locks the screen. Compile to .exe using AutoIT tools
# and place in Startup folder to immediately lock screen after logon.
#
# ------------------------------------------------------------------------
#comments-end

Run( "rundll32.exe user32.dll LockWorkStation" )