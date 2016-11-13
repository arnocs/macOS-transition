; #################################################################
; D:\Data\AHK_init_macOS.ahk
;
; OS X keyboard mappings for special chars
;

; # Remapping control key shortcuts #
; (copy, paste, save, select all etc)
	#a::^a		; Select All
	#c::^c		; Copy
	#x::^x		; Cut
	#v::^v		; Paste
	#z::^z		; Undo
	+#z::^y		; Redo
	#b::^b		; Bold
	#i::^i		; 
	;#s::^s		; Fails with onenote

; command-delete deletes whole line
	#BS::Send {LShift down}{Home}{LShift Up}{Del}

;alt-delete deletes previous word
	!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}
