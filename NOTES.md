; #################################################################
; #### Notes and Help pages

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; Variables - https://autohotkey.com/docs/Variables.htm

; Send Key list - https://www.autoitscript.com/autoit3/docs/appendix/SendKeys.htm

[Mac keyboard shortcuts](https://support.apple.com/en-us/HT201236)

[AHK List of Keys, Mouse Buttons, and Joystick Controls](https://autohotkey.com/docs/KeyList.htm)

[AHK Override (Disable All) Windows keys](https://autohotkey.com/docs/misc/Override.htm)

; http://www.askvg.com/tip-how-to-disable-all-win-keyboard-shortcuts-hotkeys-in-windows/

### Mac Keyboard profiles ###
; # Fn Key
; https://gist.github.com/anonymous/4294405#file-applewkhelper-ahk
; https://github.com/stroebjo/autohotkey-windows-mac-keyboard/blob/master/MacKeyboard.ahk
; https://github.com/stroebjo/autohotkey-windows-mac-keyboard/blob/195822b9cc1754694d45ed813271a065353b71a9/MacKeyboard.ahk

; not working becouse of forced <win>+keys
;LWin & SHIFT
;+#4::$S
; Save, Fails with 4th app in the taskbar (see Override Windows keys)
;#S::^s		T{4}::LWIN & S

### UltraEdit
;GroupAdd, Editors, "UltraEdit 64-bit"
;GroupAdd, Editors, ahk_class SunAwtFrame 
;#IfWinActive ahk_group Editors
;#IfWinActive

; ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:000000000001077D
; ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:00000000000605B3
; ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:00000000001306E3
; ahk_exe uedit64.exe
