; #################################################################
; ####### Total Commander - TLister

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_class TLister
	#W:: Send {ESC}
	#Q:: Send {ESC}
	
#IfWinActive