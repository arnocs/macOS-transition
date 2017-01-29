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

;SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#Include %A_ScriptDir%

#Include include\AHK_init.ahk					; AHK_init.ahk, 
;#Include functions/apple_wired_keyboard.ahk		; 
#Include include\macOS.ahk						;
#Include include\macOS_environment.ahk			;
;#Include include\macOS_special_character.ahk	;
#Include include\macOS_functionkeys.ahk			;
#Include include\macOS_cursor_movement.ahk		;
#Include include\macOS_mouse.ahk				;
#Include include\macOS_apps_keymappings.ahk		; Customizing application, special windows keys can be overruled this way.
#Include include\macOS_win-keys.ahk				;


;#Include include\macOS_.ahk

; #################################################################

;20161113, Win-Keys (alt-tab, Lwin+grave-accent), Renamed win-key, cursor file.