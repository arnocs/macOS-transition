; #################################################################
; ####### Google Chrome

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_class Chrome_WidgetWin_1
; Restore page
	#z::Send ^+t								; undo close tab#IfWinActive
	#+t::Send ^+t
;
	#!i::Send {F12}								; Show Web Developer Tools with cmd + alt + i
;	#!u::Send ^u								; Show source code with cmd + alt + u
	#!u::Send !d
	!l::Send !d									; Alternative to #L (is locked by windows)
	#Y::Send ^h
;{Ctrl}{LWIN}{F}::Send {F11}
	#D::Send ^d
	#Q::SendInput !^q
	#R::Send ^r
; # Remapping control key shortcuts #
; (copy, paste, save, select all etc)
	#a::Send ^a		; Select All
	#c::Send ^c		; Copy
	#x::Send ^x		; Cut
	#v::Send ^v		; Paste
	+#z::Send ^y		; Redo
	#b::Send ^b		; Bold
	#i::Send ^i		; 
	;#s::Send !s		; Fails with onenote
; Back, Forward - page
	#[::Send !{Left}
	#]::Send !{Right}
;	BS::Send !{Left}, use a plugin in the browser (Backspace to go Back).
	#=::send ^{=}
	#+::Send ^{=}
	#-::Send ^{-}
	#0::Send ^{0}

	;#l::Send {LCtrl down}{l}{LCtrl up} ;
#IfWinActive