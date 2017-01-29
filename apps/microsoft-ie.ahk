; #################################################################
; ####### Microsoft - Internet Explorer

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_class IEFrame

	#W::Send ^{w}
	#Q::SendInput !{F4}

; Restore page
	#z::Send ^+t								; undo close tab#IfWinActive
	#+t::Send ^+t

	#D::Send ^d
	#R::Send ^r

; Back, Forward - page
	#[::Send !{Left}
	#]::Send !{Right}
;	BS::Send !{Left}, use a plugin in the browser (Backspace to go Back).
	#=::send ^{=}
	#+::Send ^{=}
	#-::Send ^{-}
	#0::Send ^{0}
	
#IfWinActive