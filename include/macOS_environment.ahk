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
;Shift & LWin & Tab::Send +{AltTab}				
;	LWin & `::Send +!{Tab}
; minimize windows
	#m::WinMinimize,a
; # Window management #
	#W::Send ^{F4}	; Close Window
	#Q::Send !{F4}	; Quit
	#T::Send ^t		; New Tab
	#O::Send ^o		; Open
; # Remapping control key shortcuts #
	#a::^a		; Select All
;
	#b::^b		; Bold
	#i::^i		; Italic
	#u::^u		; Underline, Fails with Ease of Access center
;	#s::^s		; Save, Fails with onenote  (see Override Windows keys).
; ### Win-Find, changed to <ctrl>-f
	#f::Send {LCtrl down}{f}{LCtrl up}
; Undo / Redo
	#z::^z		; Undo
	#y::^y		; Redo
	+#z::^y		; Redo
; copy, paste, save, select all etc)
	#x::^x		; Cut
	#c::^c		; Copy
	#v::^v		; Paste
; delete word / line
	; <command>-<backspace> deletes whole line
	#BS::Send {LShift down}{Home}{LShift Up}{Del}
	; <alt>-<backspace> deletes previous word
	!BS::Send {right}{LCtrl down}{Left}{LCtrl up}{left}{LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}{Del}{right}
	; <alt>-<delete> deletes next word
	!Delete::Send {left}{LCtrl down}{Right}{LCtrl Up}{LShift down}{LCtrl down}{Right}{LShift Up}{Lctrl up}{Del}{left 2}
