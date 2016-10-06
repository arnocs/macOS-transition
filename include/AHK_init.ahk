; #################################################################
; #### Initial settings

; Set defaults for <scroll-lock>, <caps-lock> and <num-lock>
	SetScrollLockState, AlwaysOff	; Scroll Lock	OFF
	SetCapsLockState, Off			; Caps Lock		OFF
	SetNumlockState, On				; Num Lock		ON
	
; ## 7 - 20 - 33 - 46 - 59 - 72 - 85 - 98 
	BrightnessLevel=98				; Brightness ??

; ## 
	;#NoEnv
	#InstallKeybdHook			; Enable keylogging. - https://autohotkey.com/docs/commands/_InstallKeybdHook.htm
	#SingleInstance force		; skips dialog, replaces old instance, similar like Reload - https://autohotkey.com/docs/commands/_SingleInstance.htm
	SetTitleMatchMode 2
	SendMode Input
; #Persistent					; ???
; KeyHistory					; ???


; ### Disable Capslock
	CapsLock::return
	+CapsLock::return	; Shift+CapsLock
	!CapsLock::return	; Alt+CapsLock
	^CapsLock::return	; Ctrl+CapsLock
	#CapsLock::return	; Win+CapsLock
	^!CapsLock::return	; Ctrl+Alt+CapsLock
	^!#CapsLock::return	; Ctrl+Alt+Win+CapsLock
	;............	; You can add whatever you want to block	

; Disable lock, select addressbar browser.
;#l::!d
;#l::Send {LCtrl down}{l}{LCtrl up} ;disabled, I like winkey-L

#N::return
;#L::return
;!{TAB}::return
