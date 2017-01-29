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
	LWin & Tab::AltTab				; Alt Tab
;	RWin & Tab::AltTab				; Alt Tab
;	LWin & ^SC029::ShiftAltTab		; Shift Alt tab, [Does not function anymore]
	AppsKey & Tab::ShiftAltTab

; # Window management #
	#m::WinMinimize,a
	#w::Send ^{F4}	; Close Window
	#q::Send !{F4}	; Quit
	#t::Send ^t		; New Tab
	#o::Send ^o		; Open

	#b::^b			; Bold
	#i::^i			; Italic
	#u::^u			; Underline, Fails with Ease of Access center

	#f::Send {LCtrl down}{f}{LCtrl up}
	#g::Send ^g ; Find Next
	#a::^a		; Select All

	#x::^x		; Cut
	#c::^c		; Copy
	#v::^v		; Paste

	#z::^z		; Undo
	#y::^y		; Redo/repeat
	+#z::^y		; Redo/repeat

; Deletes whole line (<command>-<backspace>)
	#BS::Send {LShift down}{Home}{LShift Up}{Del} 
; Deletes previous word (<alt>-<backspace>)
	!BS::Send {right}{LCtrl down}{Left}{LCtrl up}{left}{LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}{Del}{right}
; Deletes next word (<alt>-<delete>)
	!Delete::Send {left}{LCtrl down}{Right}{LCtrl Up}{LShift down}{LCtrl down}{Right}{LShift Up}{Lctrl up}{Del}{left 2}

;; Browser control
	#}::Send ^{Tab}  ; forward tab
	#{::Send ^+{Tab}  ; backward tab
	#[::Send {Browser_Back}
	#]::Send {Browser_Forward}

	#+r::Reload  ; (win shift r)  reload this script
