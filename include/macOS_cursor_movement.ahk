; #################################################################
; #### Cursor and Mouse Movement

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; ## HOME END Functions
	Home::SendInput ^{home}			; Home
	END::SendInput ^{end}			; End
	
; ## Cursor movement and Selections #
	#Left::SendInput {Home}			; Command left
	#Right::SendInput {End}			; Command right
	#+Left::SendInput, +{Home}		; [select] Shift-command left
	#+Right::SendInput, +{End}		; [select] Shift-command right

	#Up::SendInput ^{Home}			; Command up
	#Down::SendInput ^{End}			; Command down
	#+Up::SendInput ^+{Home}		; [select] Shift-command up
	#+Down::SendInput ^+{End}		; [select] Shift-command down

; ## <ALT> movement and selection
	!Left::SendInput, ^{Left}		; Alt left
	!Right::SendInput, ^{Right}		; Alt right
	!+Left::SendInput, ^+{Left}		; [select] Shift-alt left
	!+Right::SendInput, ^+{Right}	; [select] Shift-alt right
; Problems with Total Commander
	;!Up::Send {Home}				; Alt UP 
	;!Down::Send {End}				; Ald Down

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
