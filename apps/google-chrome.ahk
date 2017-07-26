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
;
; Back, Forward - page
;	BS::Send !{Left},   ; Use a plugin in the browser (Backspace to go Back).
;	#[::Send !{Left}	; changed to cursor_movement.
;	#]::Send !{Right}	; changed to cursor_movement.

; (copy, paste, save, select all etc), required even it they are global
	#c::Send ^c		; Copy
	#x::Send ^x		; Cut
	#v::Send ^v		; Paste
	#+v::Send ^+v	; Paste as plain text
;
	#b::Send ^b		; Bold
	#i::Send ^i		; 
	;#s::Send !s		; Fails with onenote
	#+s::Send ^{s}	; Save as

	#g::Send ^g		; Find Next
	+#g::Send +^g	; Find Previous
	#a::Send ^a		; Select All

; Restore page
	#+t::Send ^+t	; undo close tab
	#z::Send ^+t	; undo close tab

	#n::Send ^n		; new window

; Zoom in, out, back to 100%
	#=::send ^{=}
	#+::Send ^{=}
	#-::Send ^{-}
	#0::Send ^{0}
	#NumpadAdd:: Send, {CTRLDOWN}{NumpadAdd}{CTRLUP}
	#NumpadSub:: Send, {CTRLDOWN}{NumpadSub}{CTRLUP}
	#NumpadMult:: Send, {CTRLDOWN}{0}{CTRLUP}

	^#f::Send {F11}	; Full screen
		; Sidebar
	#d::Send ^d		; Bookmarks
	+#b::Send +^b		; Bookmarks bar
	; !#b::return
	; !#b::+^o		; Bookmarks edit, not working ??
	!#l::Send ^j	; Downloads
	#y::Send ^h		; History
	#q::Send !^q 	; Quit program
	#r::Send ^r		; Reload
	+#n::Send +^n	; New incognito window
	#p::Send ^p		; Print, Overrules Win-Projector menu
; 
	#!u::Send !d	; Goto address-bar
	!l::Send !d		; Goto address-bar, alternative to #L (is locked by windows)
	;#l::Send {LCtrl down}{l}{LCtrl up} ;
;	#L::Send !d		; Not working becouse of Default Windows shortcuts.

	#1::Send ^1		; Tab 1
	#2::Send ^2		; Tab 2
	#3::Send ^3		; Tab 3
	#4::Send ^4		; Tab 4
	#5::Send ^5		; Tab 5
	#6::Send ^6		; Tab 6
	#7::Send ^7		; Tab 7
	#8::Send ^8		; Tab 8
	#9::Send ^9		; Tab 9

; # Remapping control key shortcuts #

  	


; Developer tools
	#!i::Send {F12}								; Show Web Developer Tools with cmd + alt + i
;	#!u::Send ^u								; Show source code with cmd + alt + u


#IfWinActive