; #################################################################
; #### Window Management 

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; # Window management #
	#W::Send ^{F4}	; Close Window
	#Q::Send !{F4}	; Quit
	#T::Send ^t	; New Tab

; ### Win-Find, changed to <ctrl>-f
	#f::Send {LCtrl down}{f}{LCtrl up}

; ## Spotlite search combination activates windows menu.
	#space::Send {LWin}					; Spotlight Search

; ## Remap cmd+Tab to Alt+Tab # (No more 3D-alt-tab)
	LWin & Tab::AltTab					; Alt Tab

;Shift & LWin & Tab::Send +{AltTab}				
	LWin & `::Send +!{Tab}

; ## Cursor movement and Selections #
	#Left::SendInput {Home}			; Command left
	#Right::SendInput {End}			; Command right
	#+Left::SendInput, +{Home}		; Shift-command left
	#+Right::SendInput, +{End}		; Shift-command right

	#Up::SendInput ^{Home}			; Command up
	#Down::SendInput ^{End}			; Command down
	#+Up::SendInput ^+{Home}		; Shift-command up
	#+Down::SendInput ^+{End}		; Shift-command down

; ## <ALT> movement and selection
	!Left::SendInput, ^{Left}		; Alt left
	!Right::SendInput, ^{Right}		; Alt right
	!+Left::SendInput, ^+{Left}		; Shift-alt left
	!+Right::SendInput, ^+{Right}		; Shift-alt right
	; Problems with Total Commander
	;!Up::Send {Home}			; Alt UP 
	;!Down::Send {End}			; Ald Down

; ## HOME END Functions
	Home::SendInput ^{home}
	END::SendInput ^{end}

; ???
	;<!Left::Send {ctrl down}{Left}{ctrl up}
	;<!Right::Send {ctrl down}{Right}{ctrl up}
	;^Left::Send {Home}
	;^Right::Send {End}
	;!Up::Send {ctrl down}{Up}{ctrl up}
	;!Down::Send {ctrl down}{Down}{ctrl up}
	;^Up::Send {Lctrl down}{Home}{Lctrl up}
	;^Down::Send {Lctrl down}{End}{Lctrl up}
; ??? Selection 
	;<!+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
	;<!+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}
	;^+Left::Send {shift down}{Home}}{shift up}
	;^+Right::Send {shift down}{End}}{shift up}
	;!+Up::Send {ctrl down}{shift down}{Up}}{shift up}{ctrl up}
	;!+Down::Send {ctrl down}{shift down}{Down}}{shift up}{ctrl up}
	;^+Up::Send {Lctrl down}{shift down}{Home}}{shift up}{Lctrl up}
	;^+Down::Send {Lctrl down}{shift down}{End}}{shift up}{Lctrl up}

; ## Mouse Selection #
	#LButton::SendInput ^{LButton}		; Left mouse button
	#RButton::SendInput ^{RButton}		; Right mouse button
	#+LButton::SendInput ^+{LButton}	; Left mouse button
	#+RButton::SendInput ^+{RButton}	; Right mouse button
