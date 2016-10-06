; #################################################################
; #### OS X keyboard for special Character mappings 
; Thanks to AWK_Programmer / http://www.autohotkey.com/forum/viewtopic.php?p=469373#469373
; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

; Keyboard Characters
;
;!3::Send {Raw}#
;+2::Send {Raw}@
;+'::Send {Raw}"

;!l::SendInput {@}		; Map Alt + L to @ (at)
;+!7::SendInput {\}		; Map Alt + N to \ (backslash)
;!g::SendInput {©}		; Map Alt + N to © (copywrite)
;!o::SendInput {ø}		; Map Alt + o to ø 
;!5::SendInput {[}		; Map Alt + 5 to [ (bracket open)
;!6::SendInput {]}		; Map Alt + 6 to ] (bracket close)
;!e::SendInput {€}		; Map Alt + E to € (euro)
;!-::SendInput {–}		; Map Alt + - to – (dash)
;!8::SendInput {{}		; Map Alt + 8 to {
;!9::SendInput {}}		; Map Alt + 9 to }
;!+::SendInput {±}		; Map Alt + - to ± (plus-minus)
;!r::SendInput {®}		; Map Alt + R to ® (registered)
;!7::SendInput {|}		; Map Alt + N to | (pipe)
;!w::SendInput {?}		; Map Alt + W to ? (sum-sign)
;!n::SendInput {~}		; Map Alt + N to ~ (tilde)
;#ö::SendInput {[} 
;#ä::SendInput {]} 
;^ö::SendInput {{} 
;^ä::SendInput {}}
