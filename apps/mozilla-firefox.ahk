; #################################################################
; ####### Firefox
#IfWinActive, ahk_class MozillaWindowClass
	;#L::Send !d	; Fails with Win-Desktop command
	#z::Send ^+t	; undo close tab
	#d::Send ^d		; Add bookmark
	#r::Send ^r
	#+s::Send {F12}	; Save as

#IfWinActive