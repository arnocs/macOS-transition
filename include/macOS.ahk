; #################################################################
; #### AHK_init_macOS.ahk - Notes

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; #### Mac Keyboard profiles ###
; # Fn Key
; https://gist.github.com/anonymous/4294405#file-applewkhelper-ahk
; https://github.com/stroebjo/autohotkey-windows-mac-keyboard/blob/master/MacKeyboard.ahk
; https://github.com/stroebjo/autohotkey-windows-mac-keyboard/blob/195822b9cc1754694d45ed813271a065353b71a9/MacKeyboard.ahk

; not working becouse of forced <win>+keys
;LWin & SHIF
;+#4::$S
; Save, Fails with 4th app in the taskbar (see Override Windows keys)
;#S::^s		T{4}::LWIN & S

;GroupAdd, Editors, "UltraEdit 64-bit"
;GroupAdd, Editors, ahk_class SunAwtFrame 
;#IfWinActive ahk_group Editors
;#IfWinActive

; ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:000000000001077D
; ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:00000000000605B3
; ahk_class Afx:0000000140000000:8:0000000000010007:0000000000000000:00000000001306E3
; ahk_exe uedit64.exe