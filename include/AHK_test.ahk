;;;;; TEST
;	#+::Send ^+
;	#-::Send ^-
;	#+::^+
;	#-::^-

;Shift & LWin & Tab::Send +{AltTab}				
;	LWin & `::Send +!{Tab}

; ShiftLWinTab::ShiftAltTab

;TEMP Custom rules
;!+a::send {AppsKey}{down}{down}{down}{enter}{down}{down}
;!+s::send {f2}500{enter}{down}{down}

; #### Mouse functions ####
; REMAPS CTRL-LEFT-CLICK TO CMD AND REPLICATES OSX CTRL-CLICK RIGHT-CLICK
	;LWIN & LBUTTON::send {ctrl down}{LButton}{ctrl up}
	;RWIN & LBUTTON::send {ctrl down}{LButton}{ctrl up}
	;CTRL & LBUTTON::send {RButton}


;$LWin::
;    KeyWait, LWin, T0.2
;    If !ErrorLevel	; if you hold the LWin key for less than 200 miliseconds...
;        Send, ^!r	; ...send ctrl+alt+r
;    Else	; but if it is held for more than that...
;        Send, {LWin Down} 	; ...hold LWin down
;    KeyWait, LWin ; and, in both cases, wait for it to be released
;Return

