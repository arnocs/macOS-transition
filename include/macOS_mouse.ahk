; #################################################################
; #### Window Management 

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; ## Mouse Selection #
	#LButton::SendInput ^{LButton}		; Left mouse button
	#RButton::SendInput ^{RButton}		; Right mouse button
	#+LButton::SendInput ^+{LButton}	; Left mouse button
	#+RButton::SendInput ^+{RButton}	; Right mouse button

