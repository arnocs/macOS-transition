; #################################################################
; ####### Microsoft - Excel

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#IfWinActive

; Microsoft Excel specifics
#IfWinActive, ahk_class XLMAIN

  #+s::F12 ; Save as
;  #Up::Send ^{Up}
;  #Down::Send ^{Down}

#IfWinActive