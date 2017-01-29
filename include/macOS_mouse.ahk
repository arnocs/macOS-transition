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

; Reverse Scroll, 
; WheelUp::Send {WheelDown}
; WheelDown::Send {WheelUp}