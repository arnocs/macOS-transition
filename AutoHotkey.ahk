; #################################################################
; #### Using a Mac keyboard on Windows 
; ### 
; ## 2015, 20160331, 20161006a
; Override Windows keys - https://autohotkey.com/docs/misc/Override.htm 

; ## BUGS
	; LWin+LShift+left popups StartMenu

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################


; #################################################################
; ## 
#Include %A_ScriptDir%
; ## INIT
#Include include\AHK_init.ahk
; ## macOS / OSX
#Include include\macOS.ahk
; ## 
#Include include\macOS_environment.ahk
#Include include\macOS_cursor_mouse.ahk
#Include include\macOS_functionkeys.ahk
;#Include include\macOS_charactermapping.ahk

#Include include\macOS_apps_keymappings.ahk
;#Include include\macOS_.ahk
;#Include include\macOS_.ahk
;#Include include\macOS_.ahk


; #################################################################
