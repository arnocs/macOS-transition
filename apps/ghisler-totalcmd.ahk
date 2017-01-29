; #################################################################
; ####### Total Commander

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive, ahk_class TTOTAL_CMD
;	!UP::SendInput {LAlt down}{UP}{LAlt up}

; Re-assign default, from macOS_cursor_movement.ahk 
;	!Up::Send !{Up}		; Alt UP 
	!Down::!{Down}	; Ald Down

;#IfWinActive