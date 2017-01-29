; #################################################################
; #### Function Keys
; Thanks to AWK_Programmer - http://www.autohotkey.com/forum/viewtopic.php?p=469373#469373
; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; Mac keyboard shortcuts, https://support.apple.com/en-us/HT201236

; F1/F2, Brightness
	;#F1:: gosub, BrightnessDown
	;#F2:: gosub, BrightnessUp
; F3
	#F3::Send #^{TAB}
; F4
	#F4::Send !^{TAB}
	RAlt & F4::Send, {SHIFTDOWN}{CTRLDOWN}{ESC}{SHIFTUP}{CTRLUP} ; Task Manager
; F5
; F6
; F7-F12, Media keys
	RAlt & F7::SendInput {Media_Prev}		; Media Previous
	RAlt & F8::SendInput {Media_Play_Pause}	; Media Pause
	RAlt & F9::SendInput {Media_Next}		; Media Next
	RAlt & F10::SendInput {Volume_Mute}		; Mute Volume
	RAlt & F11::SendInput {Volume_Down}		; Volume Down, {Volume_DOwn 3}
	RAlt & F12::SendInput {Volume_Up}		; Volume Up
; F13-15
	F13::SendInput {PrintScreen}						; print screen (full)
	!F13::SendInput {Alt Down}{PrintScreen}{Alt Up}		; print screen active window
	LWin & F13::Send {Alt Down}{PrintScreen}{Alt Up}
; 
	F14::SendInput {ScrollLock}
; 
	F15::SendInput {Pause}
	!F15::SendInput {Alt Down}{Pause}{Alt Up}
;	LAlt & F15::Send {LAlt Down}{Pause}{LAlt Up} ; 
	LWin & F15::Send {LWin Down}{Pause}{LWin Up} ; launch system properties
; F15::
	; SendInput {Break}
	; Sleep, 100
	; SendInput {Break}
	; Sleep, 5000
	; return

; F16-19 custom app launchers, see http://www.autohotkey.com/docs/Tutorial.htm for usage info
	F16::Insert

; # F18 = Vk81 (Insert) #
; Vk81::Send {Insert}
; !Vk81::Send !{Insert}
; ^Vk81::Send ^{Insert}

; Run UltraEdit
	F17::Run "C:\Program Files\IDM Computer Solutions\UltraEdit\uedit64.exe"
; Run Notepad
	F18::Run Notepad
; Run Calculator
	F19::Run Calc
; Computer Sleep	
	+#F19::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int",0) 
; 
	F20::SendInput {Insert}
; Computer Sleet
	^+#q::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int",0) 
; Lock and dim-screens
	+#q::
	{
		Sleep, 200
		DllCall("LockWorkStation")
		Sleep, 200
		SendMessage,0x112,0xF170,2,,Program Manager
	}
	return
	; Thanks, http://superuser.com/a/463652/249349
	; Run "C:\Windows\system32\Rundll32.exe" User32.dll,LockWorkStation			; Lock Workstation
	; Run "rundll32.exe PowrProf.dll,SetSuspendState"							; Hibernate Computer
	; Run "Shutdown.exe -r -t 60"												; Restart Computer
	; Run "Shutdown.exe -s -t 60"												; Shutdown Computer
	; #F19::Run "rundll32.exe powrprof.dll,SetSuspendState 0,1,0				; Sleep Computer 
	; ^#F19::

;+!4::Send {LWin S}
;#S::Send {LWin}
;`::SendInput {LWin}S

; `::Send, this hotkey works.
; Shift & `::Send, this hotkey also works.