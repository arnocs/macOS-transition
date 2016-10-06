; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.
; This script has a special filename and path because it is automatically
; launched when you run the program directly. 

; # Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; $^p , $ Allow send itself within a script/function.

;TEMP Custom rules
;!+a::send {AppsKey}{down}{down}{down}{enter}{down}{down}
;!+s::send {f2}500{enter}{down}{down}

; #################################################################
; #### Initial settings
; ### Debug #### action snippet: MsgBox You pressed Control-A while Notepad is active.
	#InstallKeybdHook				; Enable keylogging
	#SingleInstance force
	SetTitleMatchMode 2
	SendMode Input
; #Persistent					; ???
; KeyHistory					; ???

; Make sure scroll lock is off by default
	SetScrollLockState, AlwaysOff
	SetCapsLockState, Off
	SetNumlockState, On
	BrightnessLevel=98
;7 - 20 - 33 - 46 - 59 - 72 - 85 - 98 


; #################################################################
; #### Settings
; ### 
; ## 2015, 20160331

; ## Spotlite search combination activates windows menu.
#space::Send {LWin}

; ## Remap cmd+Tab to Alt+Tab # (No more 3D-alt-tab)
	LWin & Tab::AltTab					; Alt Tab
;Shift & LWin & Tab::Send +{AltTab}				
	LWin & `::Send +!{Tab}

; ## Mouse Selection #
	#LButton::SendInput ^{LButton}		; Left mouse button
	#RButton::SendInput ^{RButton}		; Right mouse button
	#+LButton::SendInput ^+{LButton}	; Left mouse button
	#+RButton::SendInput ^+{RButton}	; Right mouse button

; ## Cursor movement and Selections #
	#Left::SendInput {Home}			; Command left
	#Right::SendInput {End}			; Command right
	#+Left::SendInput, +{Home}		; Shift-command left
	#+Right::SendInput, +{End}		; Shift-command right

	#Up::SendInput ^{Home}			; Command up
	#Down::SendInput ^{End}			; Command down
	#+Up::SendInput ^+{Home}		; Shift-command up
	#+Down::SendInput ^+{End}		; Shift-command down

; ## <ALT> movement and selection
	!Left::SendInput, ^{Left}		; Alt left
	!Right::SendInput, ^{Right}		; Alt right
	!+Left::SendInput, ^+{Left}		; Shift-alt left
	!+Right::SendInput, ^+{Right}		; Shift-alt right
	; Problems with Total Commander
	;!Up::Send {Home}			; Alt UP 
	;!Down::Send {End}			; Ald Down

; ???
	;<!Left::Send {ctrl down}{Left}{ctrl up}
	;<!Right::Send {ctrl down}{Right}{ctrl up}
	;^Left::Send {Home}
	;^Right::Send {End}
	;!Up::Send {ctrl down}{Up}{ctrl up}
	;!Down::Send {ctrl down}{Down}{ctrl up}
	;^Up::Send {Lctrl down}{Home}{Lctrl up}
	;^Down::Send {Lctrl down}{End}{Lctrl up}
; ??? Selection 
	;<!+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
	;<!+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}
	;^+Left::Send {shift down}{Home}}{shift up}
	;^+Right::Send {shift down}{End}}{shift up}
	;!+Up::Send {ctrl down}{shift down}{Up}}{shift up}{ctrl up}
	;!+Down::Send {ctrl down}{shift down}{Down}}{shift up}{ctrl up}
	;^+Up::Send {Lctrl down}{shift down}{Home}}{shift up}{Lctrl up}
	;^+Down::Send {Lctrl down}{shift down}{End}}{shift up}{Lctrl up}

; ## HOME END Functions
	Home::SendInput ^{home}
	END::SendInput ^{end}


; # Window movement #
#m::							; Minimize 
;	WinMaximize,A
	WinMinimize,A
return

;;;;; TEST
	#+::Send ^+
	#-::Send ^-
	#+::^+
	#-::^-

;$LWin::
;    KeyWait, LWin, T0.2
;    If !ErrorLevel	; if you hold the LWin key for less than 200 miliseconds...
;        Send, ^!r	; ...send ctrl+alt+r
;    Else	; but if it is held for more than that...
;        Send, {LWin Down} 	; ...hold LWin down
;    KeyWait, LWin ; and, in both cases, wait for it to be released
;Return
		
; # Window management #
#W::Send ^{F4}	; Close Window
#Q::Send !{F4}	; Quit
#T::Send ^t	; New Tab

; # Remapping control key shortcuts #
; (copy, paste, save, select all etc)
#a::^a		; Select All
#c::^c		; Copy
#x::^x		; Cut
#v::^v		; Paste
#z::^z		; Undo
+#z::^y		; Redo
#b::^b		; Bold
#i::^i		; 
;#s::^s		; Fails with onenote

; command-delete deletes whole line
	#BS::Send {LShift down}{Home}{LShift Up}{Del}

;alt-delete deletes previous word
	!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}

; ### Win-Find, changed to <ctrl>-f
#f::Send {LCtrl down}{f}{LCtrl up}

; ### Disable Capslock
CapsLock::return
+CapsLock::return	; Shift+CapsLock
!CapsLock::return	; Alt+CapsLock
^CapsLock::return	; Ctrl+CapsLock
#CapsLock::return	; Win+CapsLock
^!CapsLock::return	; Ctrl+Alt+CapsLock
^!#CapsLock::return	; Ctrl+Alt+Win+CapsLock
;............	; You can add whatever you want to block

; #### Function Keys ####
;#F1:: gosub, BrightnessDown
;#F2:: gosub, BrightnessUp
#F3::Send #^{TAB}
#F4::Send !^{TAB}

; Media keys
LWin & F7::SendInput {Media_Prev}		; Media Previous
LWin & F8::SendInput {Media_Play_Pause}		; Media Pause
LWin & F9::SendInput {Media_Next}		; Media Next
LWin & F10::SendInput {Volume_Mute}		; Mute Volume
LWin & F11::SendInput {Volume_Down}		; Volume Down
LWin & F12::SendInput {Volume_Up}		; Volume Up

; F13-15, standard windows mapping
;VK7c::Send {PrintScreen}				; (F13) PrintScreen
;VK7d::Send {ScrollLock}				; (F14) ScrollLock
;Vk7e::SendInput {Pause}				; Vk7e (F15) Pause/Break

;F15::
; SendInput {Break}
; Sleep, 100
; SendInput {Break}
; Sleep, 5000
; return

; F13-15
F13::SendInput {PrintScreen}
LWin & F13::Send {Alt Down}{PrintScreen}{Alt Up} ; print screen active window
F14::SendInput {ScrollLock}
;F15::SendInput {Pause}
LAlt & F15::Send {LAlt Down}{Pause}{LAlt Up} ; 
LWin & F15::Send {LWin Down}{Pause}{LWin Up} ; launch system properties
;F16
F16::Insert
;F17::Run Notepad
F18::Run "C:\Program Files\IDM Computer Solutions\UltraEdit\uedit64.exe"
F19::Run Calc

; #### Mouse functions ####
; REMAPS CTRL-LEFT-CLICK TO CMD AND REPLICATES OSX CTRL-CLICK RIGHT-CLICK
;LWIN & LBUTTON::send {ctrl down}{LButton}{ctrl up}
;RWIN & LBUTTON::send {ctrl down}{LButton}{ctrl up}
;CTRL & LBUTTON::send {RButton}


; # Eject Drive #
;#ESC::gosub, EjectDrive


; #################################################################
; #### custom Applications settings
; ### 
; ## 2015


; #################################################################
; ### VMware MacVM
#IfWinActive, ahk_class VMUIFrame
; Set back to default commands
	Home::SendInput {home}
	END::SendInput {end}

; ### Putty
#IfWinActive, ahk_class PuTTY
; Set back to default commands
	Home::SendInput {home}
	END::SendInput {end}


; #################################################################
; ####### Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1
; Restore page
	#z::Send ^+t								; undo close tab#IfWinActive
	#+t::Send ^+t

	#!i::Send {F12}								; Show Web Developer Tools with cmd + alt + i
	;#!u::Send ^u								; Show source code with cmd + alt + u
	#!u::Send !d
	#L::Send !d
	#Y::Send ^h
;{Ctrl}{LWIN}{F}::Send {F11}
	#D::Send ^d
	#Q::SendInput !^q
	#R::Send ^r
; # Remapping control key shortcuts #
; (copy, paste, save, select all etc)
	#a::Send ^a		; Select All
	#c::Send ^c		; Copy
	#x::Send ^x		; Cut
	#v::Send ^v		; Paste
	+#z::Send ^y		; Redo
	#b::Send ^b		; Bold
	#i::Send ^i		; 
	;#s::Send !s		; Fails with onenote
; Back, Forward - page
	#[::Send !{Left}
	#]::Send !{Right}
;	BS::Send !{Left}
	
;	!Left::SendInput, ^{Left}		; Alt left
;	!Right::SendInput, ^{Right}		; Alt right

;
;#IfWinActive

; #################################################################
; ####### Firefox
#IfWinActive, ahk_class MozillaWindowClass
	;#L::Send !d
	#z::Send ^+t								; undo close tab
	#D::Send ^d									; Add bookmark
	#R::Send ^r
;#IfWinActive

; #################################################################
; ####### Total Commander
;#IfWinActive, ahk_class TTOTAL_CMD
;	!UP::SendInput {LAlt down}{UP}{LAlt up}
;#IfWinActiveS


            
; #################################################################
; #### custom settings
; ### 
; ## 2015

; Disable lock, select addressbar browser.
;#l::!d
;#l::Send {LCtrl down}{l}{LCtrl up} ;disabled, I like winkey-L


#N::return
;#L::return
;!{TAB}::return


; #################################################################
; #################################################################
; #################################################################
; #################################################################
; #################################################################


;#f::Send {LCtrl down}{f}{LCtrl up}

; # Eject Key #
;Hotkey, F20, EjectDrive

;#F1::


;!Delete::Send {LCtrl down}{Right}{LCtrl Up}{LShift down}{LCtrl down}{Right}{LShift Up}{Lctrl up}{Del}	;alt-function-delete deletes next word


;!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}				;alt-delete deletes previous word


; Remap cmd+Tab to Alt+Tab
;LWin & Tab::AltTab


	
; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.



; ### custom settings testing
; ##
; # 2016


;^!#{up}::
;	WinMinimize,A
;	WinMaximize,A
;return
;$!^#Left::
;	#{Left}
;return

; System shortcuts - because we have swapped alt and cmd we need to re-map some standard shortcuts
;LAlt & E::Send #e ;explorer
;LAlt & D::Send #d ;hide all
;LAlt & m::Send !^m ;minimise all
;LAlt & L::DllCall("LockWorkStation") ;lock machine
;LAlt & R::Send #r ;run command
;*ScrollLock::Run Notepad  ; Pressing ScrollLock will trigger this hotkey even when modifier key(s) are down.

; # Fn Key

; # F18 = Vk81 (Insert) #
;Vk81::Send {Insert}
;!Vk81::Send !{Insert}
;^Vk81::Send ^{Insert}

; ### Map Function keys on a Mac keyboard
;+F3::Send #^{TAB}
;+F4::Send !^{TAB}
;+F10::Send {Volume_Mute}
;+F11::Send {Volume_DOwn 3}
;+F12::Send {Volume_Up}


;+!4::Send {LWin S}
;#S::Send {LWin}

;`::SendInput {LWin}S

; `::Send, this hotkey works.
; Shift & `::Send, this hotkey also works.

;############################################################################
; Functions 
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

; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

;!l::SendInput {@}		; Map Alt + L to @
;+!7::SendInput {\}		; Map Alt + N to \
;!g::SendInput {©}		; Map Alt + N to ©
;!o::SendInput {ø}		; Map Alt + o to ø
;!5::SendInput {[}		; Map Alt + 5 to [
;!6::SendInput {]}		; Map Alt + 6 to ]
;!e::SendInput {€}		; Map Alt + E to €
;!-::SendInput {–}		; Map Alt + - to –
;!8::SendInput {{}		; Map Alt + 8 to {
;!9::SendInput {}}		; Map Alt + 9 to }
;!+::SendInput {±}		; Map Alt + - to ±
;!r::SendInput {®}		; Map Alt + R to ®
;!7::SendInput {|}		; Map Alt + N to |
;!w::SendInput {?}		; Map Alt + W to ?
;!n::SendInput {~}		; Map Alt + N to ~
;#ö::SendInput {[} 
;#ä::SendInput {]} 
;^ö::SendInput {{} 
;^ä::SendInput {}}
; Keyboard Characters
;
;!3::Send {Raw}#
;+2::Send {Raw}@
;+'::Send {Raw}"

; Thanks to AWK_Programmer 
; http://www.autohotkey.com/forum/viewtopic.php?p=469373#469373

; #### Mac Keyboard profiles ###
; # Fn Key
; https://gist.github.com/anonymous/4294405#file-applewkhelper-ahk
; https://github.com/stroebjo/autohotkey-windows-mac-keyboard/blob/master/MacKeyboard.ahk
; https://github.com/stroebjo/autohotkey-windows-mac-keyboard/blob/195822b9cc1754694d45ed813271a065353b71a9/MacKeyboard.ahk