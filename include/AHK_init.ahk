; #################################################################
; #### Initial settings

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; ## 7 - 20 - 33 - 46 - 59 - 72 - 85 - 98 
;	BrightnessLevel=98				; Brightness ??

; Enable keylogging. - https://autohotkey.com/docs/commands/_InstallKeybdHook.htm
;	#InstallKeybdHook		

; Looking for AltTab sticky ALT fix
;	#UseHook

; skips dialog, replaces old instance, similar like Reload - https://autohotkey.com/docs/commands/_SingleInstance.htm
	#SingleInstance force	
	SetTitleMatchMode 2
;
	#NoEnv					; Recommended for performance and compatibility with future AutoHotkey releases.
	SendMode Input			; Recommended for new scripts due to its superior speed and reliability.

; #Persistent				; ???
; KeyHistory				; ???

; Set defaults for <scroll-lock>, <caps-lock> and <num-lock>
	SetScrollLockState, AlwaysOff	; Scroll Lock	OFF
	SetCapsLockState, Off			; Caps Lock		OFF
	SetNumlockState, On				; Num Lock		ON