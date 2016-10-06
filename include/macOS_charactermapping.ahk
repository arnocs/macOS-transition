; #################################################################
; #### OS X keyboard for special Character mappings 
; Thanks to AWK_Programmer 
; http://www.autohotkey.com/forum/viewtopic.php?p=469373#469373

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

;!l::SendInput {@}		; Map Alt + L to @
;+!7::SendInput {\}		; Map Alt + N to \
;!g::SendInput {©}		; Map Alt + N to ©
;!o::SendInput {ø}		; Map Alt + o to ø
;!5::SendInput {[}		; Map Alt + 5 to [
;!6::SendInput {]}		; Map Alt + 6 to ]
;!e::SendInput {€}		; Map Alt + E to €
;!-::SendInput {–}		; Map Alt + - to –
;!8::SendInput {{}		; Map Alt + 8 to {
;!9::SendInput {}}		; Map Alt + 9 to }
;!+::SendInput {±}		; Map Alt + - to ±
;!r::SendInput {®}		; Map Alt + R to ®
;!7::SendInput {|}		; Map Alt + N to |
;!w::SendInput {?}		; Map Alt + W to ?
;!n::SendInput {~}		; Map Alt + N to ~
;#ö::SendInput {[} 
;#ä::SendInput {]} 
;^ö::SendInput {{} 
;^ä::SendInput {}}
; Keyboard Characters
;
;!3::Send {Raw}#
;+2::Send {Raw}@
;+'::Send {Raw}"