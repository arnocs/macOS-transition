; #################################################################
; #### Window Management 

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; ## Spotlite search combination activates windows menu.
	#space::Send {LWin}
; ## Remap cmd+Tab to Alt+Tab # (No more 3D-alt-tab)
	LWin & Tab::AltTab					; Alt Tab

; # Window management #
	#W::Send ^{F4}	; Close Window
	#Q::Send !{F4}	; Quit
	#T::Send ^t	; New Tab

; # Remapping control key shortcuts #
; (copy, paste, save, select all etc)
	#a::^a		; Select All
	#c::^c		; Copy
	#x::^x		; Cut
	#v::^v		; Paste
;
	#z::^z		; Undo
	+#z::^y		; Redo
;
	#b::^b		; Bold
	#i::^i		; Italic
	;#u::^u		; Underline, Fails with Ease of Access center
	;#s::^s		; Save, Fails with onenote (see Override Windows keys).
; ### Win-Find, changed to <ctrl>-f
	#f::Send {LCtrl down}{f}{LCtrl up}
;#f::Send {LCtrl down}{f}{LCtrl up}

; command-delete deletes whole line
	#BS::Send {LShift down}{Home}{LShift Up}{Del}

;alt-delete deletes previous word
	!BS::Send {right}{LCtrl down}{Left}{LCtrl up}{left}{LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}{Del}{right}
;alt-function-delete deletes next word
	!Delete::Send {left}{LCtrl down}{Right}{LCtrl Up}{LShift down}{LCtrl down}{Right}{LShift Up}{Lctrl up}{Del}{left 2}

; # Window movement #
;#m::							; Minimize 
;	WinMaximize,A
;	WinMinimize,A
;return

