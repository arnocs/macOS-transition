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

; 
	#x::^x		; Cut
	#c::^c		; Copy
	#v::^v		; Paste
; 
	#b::^b			; Bold
	#i::^i			; Italic
	#u::^u			; Underline, Fails with Ease of Access center
; 
	#f::Send {LCtrl down}{f}{LCtrl up}
	#g::Send ^g ; Find Next
	#a::^a		; Select All
;
	#z::^z		; Undo
	#y::^y		; Redo/repeat
	#+z::^y		; Redo/repeat

; ## Remap cmd+Tab to Alt+Tab # (No more 3D-alt-tab)
	LWin & Tab::AltTab				; Alt Tab
	RWin & Tab::AltTab				; Alt Tab
	LWin & `::ShiftAltTab			; Alt Tab reverse
	RWin & `::ShiftAltTab			; Alt Tab reverse
;	LWin & ^SC029::ShiftAltTab		; Shift Alt tab, [Does not function anymore]`
;	AppsKey & Tab::ShiftAltTab

; ## Window/Application management
	#t::Send ^t		; New Tab
	#o::Send ^o		; Open

	#w::Send ^{F4}	; Close Window
	#q::Send !{F4}	; Quit

	#m::WinMinimize,a

;; Browser control
	#}::Send ^{Tab}					; forward tab
	#{::Send ^+{Tab}				; backward tab
	#[::Send {Browser_Back}
	#]::Send {Browser_Forward}
				
; ### Disable Keys (CapsLock)
	CapsLock::return
	+CapsLock::return
	!CapsLock::return
	^CapsLock::return
	#CapsLock::return
	^!CapsLock::return
	^!#CapsLock::return
	;............	; You can add whatever you want to block