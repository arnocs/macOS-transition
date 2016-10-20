; #################################################################
; ####### Firefox
#IfWinActive, ahk_class MozillaWindowClass
	;#L::Send !d
	#z::Send ^+t								; undo close tab
	#d::Send ^d									; Add bookmark
	#r::Send ^r
#IfWinActive