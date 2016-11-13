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
	BrightnessLevel=98				; Brightness ??

; ## 
	#InstallKeybdHook		; Enable keylogging. - https://autohotkey.com/docs/commands/_InstallKeybdHook.htm
	#SingleInstance force	; skips dialog, replaces old instance, similar like Reload - https://autohotkey.com/docs/commands/_SingleInstance.htm

	SetTitleMatchMode 2

	#NoEnv					; Recommended for performance and compatibility with future AutoHotkey releases.
	SendMode Input			; Recommended for new scripts due to its superior speed and reliability.

; #Persistent				; ???
; KeyHistory				; ???

; Set defaults for <scroll-lock>, <caps-lock> and <num-lock>
	SetScrollLockState, AlwaysOff	; Scroll Lock	OFF
	SetCapsLockState, Off			; Caps Lock		OFF
	SetNumlockState, On				; Num Lock		ON

; ### Disable Keys (CapsLock)
	CapsLock::return
	+CapsLock::return
	!CapsLock::return
	^CapsLock::return
	#CapsLock::return
	^!CapsLock::return
	^!#CapsLock::return
	;............	; You can add whatever you want to block