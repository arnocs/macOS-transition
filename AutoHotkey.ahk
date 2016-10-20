; #################################################################
; #### Using a Mac keyboard on Windows 
; ### 
; ## 2015, 20160331, 20161006a
; Override Windows keys - https://autohotkey.com/docs/misc/Override.htm 

; ## BUGS
	; RWin+LShift+left popups StartMenu

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; #################################################################
#Include %A_ScriptDir%
;SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; ## INIT'
#Include include\AHK_init.ahk

; ## macOS / OSX
;#Include functions/apple_wired_keyboard.ahk		; 
;
#Include include\macOS.ahk
#Include include\macOS_environment.ahk
;#Include include\macOS_special_character.ahk
#Include include\macOS_functionkeys.ahk
#Include include\macOS_cursor.ahk
#Include include\macOS_mouse.ahk
#Include include\macOS_apps_keymappings.ahk
;
#Include include\win-keys.ahk


;#Include include\macOS_.ahk

; #################################################################