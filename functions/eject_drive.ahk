;############################################################################
;# Function # Eject Drive #

;############################################################################
;#ESC::gosub, EjectDrive
; # Eject Key #
;Hotkey, F20, EjectDrive

;############################################################################

; ### Eject Drive ###
;EjectDrive:
;DriveGet, drivestate, StatusCD
;
;if drivestate in %notejectable%
;{
;	if (drivestate = "not ready")
;	{
;		MsgBox, 325, Drive State, The drive is not ready to be ejected, perhaps due to being engaged in a write operation, or there is a DVD in a CD-only tray.
;		
;		gosub, EjectMsgbox
;	}	
;	else if (drivestate = "playing")
;	{
;		MsgBox, 325, Drive State, The drive cannot be ejected because the drive is playing a disc.
;		
;		gosub, EjectMsgbox
;		
;	}
;	else if (drivestate = "seeking")
;	{
;		MsgBox, 325, Drive State, The drive cannot be ejected because the drive is looking for data on a disk, or lookin for a disk.
;		
;		gosub, EjectMsgbox
;		
;	}
;} 
;else if (drivestate = "open")
;{
;	Drive, Eject
;}
;else
;{
;	if not ErrorLevel = 0
;	{
;		MsgBox, 325, ERROR, There was an unknown error opening the drive.`nPlease attempt a manual ejection.`n`nErrorCode: %ErrorLevel%
;		gosub EjectMsgbox
;	}
;}
;return

;EjectMsgbox:
;IfMsgBox, Retry 
;{
;	gosub, EjectDrive
;	return
;}
;Else
;{
;	return
;}
;return

; ???? notejectable:="not ready,playing,seeking" ; drive states that eject is unavailable in

; #################
