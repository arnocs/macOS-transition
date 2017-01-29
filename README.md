# macOS transition
AutoHotkey Script for using a Apple keyboard with numpad (metalic) on a windows 7 machine.
The focus is on using it like a mac.

## Using AHK v1.1.24.04, 

# AutoHotKey v2 is alpha-release. Suggest use v1.1.24.02
v1.1.24.02 downloads
* [AutoHotkey Portable](https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.24.02.zip)
* [AutoHotkey_Setup](https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.24.02_setup.exe)
* [Help](https://www.autohotkey.com/download/1.1/AutoHotkeyHelp.zip)

# Windows key changes
- F16 is the <insert>, becouse unable to capture the <fn> key.
- F19, Start calculator

# KnownBugs
- When using Windows UAC (User Account Control), causes the AltTab function not working, creating a sticky <alt> key.
- Has `WIN` key conflict when AHK with StartIsBack++. A suggest replace StartIsBack++ with Start10, or use system start.

# Mouse, Reverse scrolling is disabled in the macOS_mouse.ahk script.
I'm using Wizmouse, becouse of the focus/scroll option.
(Hovering over an inactive program scrolling works on that program )
http://antibody-software.com/web/software/software/wizmouse-makes-your-mouse-wheel-work-on-the-window-under-the-mouse/

## UltraEdit project file
- UE-AutoHotKey-2016.prj | UltraEdit Project file
