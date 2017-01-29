; #################################################################
; #### Using a Mac keyboard on Windows 
; ### 
; ## 

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#+r::Reload						; (win shift r)  reload this script
; ## SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting direCustom, Save ALLctory.
#Include %A_ScriptDir%

; #################################################################
; ## Include AHK configuration files.
#Include include\AHK_init.ahk					; AHK_init.ahk, 
#Include include\macOS_environment.ahk			; Windows environment
;#Include include\macOS_special_character.ahk	; Special characters shortcuts from Mac.
#Include include\macOS_functionkeys.ahk			; Windows Function keys
#Include include\macOS_cursor_movement.ahk		; Windows Cursor movement
#Include include\macOS_mouse.ahk				; Mouse modifications
;#Include include\macOS_apps_keymappings.ahk		; Customizing application, special windows keys can be overruled this way.
#Include include\macOS_win-keys.ahk				;
;#Include include\macOS_						; Template for extra include files.
; #################################################################

; TEST
;#Include functions/apple_wired_keyboard.ahk		; 

; #################################################################
; #### Applications custom settings
#Include Apps\ghisler-totalcmd.ahk		; Total Commander
#Include Apps\ghisler-tlister.ahk		; Total Commander - TLister
#Include Apps\google-chrome.ahk			; Google Chrome
#Include Apps\mozilla-firefox.ahk		; Mozilla Firefox
#Include Apps\microsoft-cmd.ahk			; command-prompt
#Include Apps\microsoft-ie.ahk 			; internet explorer
#Include Apps\microsoft-visualstudio.ahk	; Visualstudio 
#Include Apps\simontatham-putty.ahk		; Putty
#Include Apps\idm-ultraedit.ahk			; UltraEdit
#Include Apps\vmware-player.ahk			; VMware player
#Include Apps\adobe-reader.ahk			; Adobe Reader (PDF)
;#Include Apps\.ahk
; #################################################################