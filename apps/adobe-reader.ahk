; #################################################################
; ####### Adobe acrobat reader

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_class AcrobatSDIWindow
	#R:: Send +^{+}
	+#R:: Send +^{-}
	
	
	
#IfWinActive