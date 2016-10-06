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

;
	;#F1:: gosub, BrightnessDown
	;#F2:: gosub, BrightnessUp
	#F3::Send #^{TAB}
	#F4::Send !^{TAB}
	;F5
	;F6
; Media keys
	RAlt & F7::SendInput {Media_Prev}		; Media Previous
	RAlt & F8::SendInput {Media_Play_Pause}		; Media Pause
	RAlt & F9::SendInput {Media_Next}		; Media Next
	RAlt & F10::SendInput {Volume_Mute}		; Mute Volume
	RAlt & F11::SendInput {Volume_Down}		; Volume Down
	RAlt & F12::SendInput {Volume_Up}		; Volume Up

; F13-15, standard windows mapping
	;VK7c::Send {PrintScreen}				; (F13) PrintScreen
	;VK7d::Send {ScrollLock}				; (F14) ScrollLock
	;Vk7e::SendInput {Pause}				; Vk7e (F15) Pause/Break
; F13-15
	F13::SendInput {PrintScreen}
	LWin & F13::Send {Alt Down}{PrintScreen}{Alt Up} ; print screen active window
	F14::SendInput {ScrollLock}
;F15::SendInput {Pause}
	LAlt & F15::Send {LAlt Down}{Pause}{LAlt Up} ; 
	LWin & F15::Send {LWin Down}{Pause}{LWin Up} ; launch system properties
;F15::
	; SendInput {Break}
	; Sleep, 100
	; SendInput {Break}
	; Sleep, 5000
	; return
;F16
F16::Insert
;F17::Run Notepad
;F18::Run "C:\Program Files\IDM Computer Solutions\UltraEdit\uedit64.exe"
;F19::Run Calc