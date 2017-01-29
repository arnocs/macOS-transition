; #################################################################
; #### Visual Studio

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

;#IfWinActive, ahk_class ??????
;; Xcode like shortcuts for Visual Studio
;#Return::
;{
;    Send {F5}  ; Build & Run
;    WinActivate Windows Phone Emulator
;}
;#+Return::Send +{F5}  ; Stop
;#IfWinActive