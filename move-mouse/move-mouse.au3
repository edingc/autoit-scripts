#comments-start
# ------------------------------------------------------------------------
# NAME: move-mouse.au3
# AUTHOR: Cody Eding
# DATE: 2/21/14
#
# COMMENTS: This script moves the mouse slightly every minute.
# Useful to keep screen from locking.
#
# ------------------------------------------------------------------------
#comments-end

While 1
    Sleep( 60000 )
    $CurPos = MouseGetPos ( )
    MouseMove ( $CurPos[0] + 1, $CurPos[1] )
    MouseMove ( $CurPos[0] - 1, $CurPos[1] )
WEnd