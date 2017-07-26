; #################################################################
; ####### Firefox

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################


#IfWinActive, ahk_class MozillaWindowClass
	;#L::Send !d	; Fails with Win-Desktop command
	#z::Send ^+t	; undo close tab
	#d::Send ^d		; Add bookmark
	#r::Send ^r
	#+s::Send {F12}	; Save as

; Zoom in, out, back to 100%
	#=::send ^{=}
	#+::Send ^{=}
	#-::Send ^{-}
	#0::Send ^{0}
	#NumpadAdd:: Send, {CTRLDOWN}{NumpadAdd}{CTRLUP}
	#NumpadSub:: Send, {CTRLDOWN}{NumpadSub}{CTRLUP}
	#NumpadMult:: Send, {CTRLDOWN}{0}{CTRLUP}

#IfWinActive