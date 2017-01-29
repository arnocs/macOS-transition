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
	#s::Send ^s		; Save
	#+s::Send {F12}	; Save as

	#n::Send ^n		; New
;	#k::Send ^o		; Open
#IfWinActive