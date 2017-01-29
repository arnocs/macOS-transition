; #################################################################
; ### UltraEdit 64-bit

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

;
; <alt>-{left/right} aint working :/
; Window class keeps changing :/
;

;SetTitleMatchMode, RegEx
#IFWinActive, ahk_exe uedit64.exe 
; 
	#n::Send ^n		; New
;	#k::Send ^o		; Open
; 
	#s::Send ^s		; Save
	#+s::Send {F12}	; Save as
	#!s::Send !{F12}; Custom, Save ALL
#IfWinActive