; #################################################################
; #### Window Management 

; #################
; # = Windows key
; ^ = <CTRL>
; ! = <ALT>
; + = <Shift>
; <^>! = <AltGr>
; #################

#N::return	; [disable] Onenote, newnote.
ALT & TAB::return	; [disable] ALT-Tab

; Disable lock, select addressbar browser.
;#L::return ; Cannot be disabled
;#l::!d

; WIN+R to launch RUN dialog box
; WIN+E to launch Windows Explorer
; WIN+L to lock
; WIN+P to launch External Display selection screen
; WIN+X to show WIN+X menu (Windows 8 and later)
; WIN+C to show Charms Bar (Windows 8 and later)
; WIN+PrtScn to capture computer screen and save screenshot (Windows 8 and later)
; WIN+S or WIN+F to launch Search
; WIN+D to show the Desktop
; WIN+M to minimize all running programs windows
; WIN+SHIFT+M to restore all running programs windows
; WIN+Break to show System Properties
; WIN+B to set focus on system tray (Taskbar notification area) icons
; WIN+T to set focus on Taskbar buttons
; WIN+number key (0-9) to switch between Quick Launch toolbar or Taskbar buttons

; System shortcuts - because we have swapped alt and cmd we need to re-map some standard shortcuts
;LAlt & E::Send #e ;explorer
;LAlt & D::Send #d ;hide all
;LAlt & m::Send !^m ;minimise all
;LAlt & L::DllCall("LockWorkStation") ;lock machine
;LAlt & R::Send #r ;run command
;*ScrollLock::Run Notepad  ; Pressing ScrollLock will trigger this hotkey even when modifier key(s) are down.