#comments-start
# ------------------------------------------------------------------------
# NAME: gui-automation.au3
# AUTHOR: Cody Eding
# DATE: 9/2/2014
#
# COMMENTS: This script automates the GUI functions of a Citrix application.
# This is only an example of functions provided by AutoIT and is not functional.
#
# ------------------------------------------------------------------------
#comments-end

; Set mouse coordinates to be relative to the current window. 
; This should be default behavior, but let's ensure it behaves.
AutoItSetOption( "MouseCoordMode", 0 )

; Get the username to add from an input box.
Local $Username = InputBox( "User Setup", "Username?" )

; Run the Citrix application through the client.
Run( 'C:\Program Files (x86)\Citrix\ICA Client\pnagent.exe /CitrixShortcut: (2) /QLaunch "Citrix Application Name"' )

; Wait until the LOGON screen is open and then make it the active window.
WinWait( "LOGON - \\Remote" )
WinActivate( "LOGON - \\Remote" )

; I'm just sending ENTER to move past the welcome window and log in.
Send( "{ENTER}" )

; Wait to continue until the main Citrix window appears.
WinWaitActive( "CITRIX Application - \\Remote" )

; Click the "User Access" module.
MouseClick( "left", 605, 455 )

; Wait to continue until the User Access window appears.
WinWaitActive( "User Access - \\Remote" )

; Select the username field and type the name we collected via input earlier.
MouseClick( "left", 100, 90 )
Send( $Username )

; Add the user. Sleep between dialog boxes. 
; Send ENTER to move past two save dialogues.
MouseClick( "left", 355, 75 )
Sleep( 3000 )
Send( "{ENTER}" )
Sleep( 3000 )
Send( "{ENTER}" )

; Wait to continue until the main User Access dialog is active again.
WinWaitActive( "User Access - \\Remote" )

; Select the application permissions (checkboxes).
MouseClick( "left", 330, 305 )
MouseClick( "left", 330, 320 )
MouseClick( "left", 330, 335 )
MouseClick( "left", 330, 365 ) 
MouseClick( "left", 330, 395 ) 
MouseClick( "left", 330, 430 ) 
MouseClick( "left", 330, 445 ) 
MouseClick( "left", 330, 460 ) 

; Select the Functions tab.
MouseClick( "left", 120, 200 )

; Select the functions (checkboxes).
MouseClick( "left", 340, 320 ) 
MouseClick( "left", 340, 350 ) 
MouseClick( "left", 340, 465 ) 

; Click the Modify button.
MouseClick( "left", 350, 70 )

; Wait three seconds for the Save dialog and send ENTER to close it.
Sleep( 3000 )
Send( "{ENTER}" )

; Wait to continue until the User Access dialog is active again.
; Once it's active, close the User Access module.
WinWaitActive( "User Access - \\Remote" )
MouseClick( "left", 355, 175 )

; Wait to continue until the main Falcon window is active.
; Once it's active, log out of Falcon by pressing the button.
WinWaitActive( "CITRIX Application - \\Remote" )
MouseClick( "left", 765, 555 ) 