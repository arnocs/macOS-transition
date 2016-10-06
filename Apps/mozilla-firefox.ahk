; #################################################################
; ####### Firefox
#IfWinActive, ahk_class MozillaWindowClass
	;#L::Send !d
	#z::Send ^+t								; undo close tab
	#D::Send ^d									; Add bookmark
	#R::Send ^r
#IfWinActive