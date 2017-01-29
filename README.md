# macOS transition
AutoHotkey (AHK) Script for using a Apple keyboard with numpad (metalic) on a windows 7 machine.<br>
The focus is on using it like a mac.

## Install
- Install AutoHotKey program (downloads below)
- Get a copy of 'macOS-transition' extract it somewhere.
- Create a shortcut of 'AutoHotKey.ahk' file in the 'Startup' folder in your startmenu.

## AutoHotKey Currently in use v1.1.24.04
- AutoHotkey [Download Page](https://www.autohotkey.com/download/) | [AHK Help](https://www.autohotkey.com/download/1.1/AutoHotkeyHelp.zip)

## Goal
Is to get use to the mac environment in windows.
For example when you are using Apple macOS and Windows machines concurrently.

## KnownBugs
- When using Windows UAC (User Account Control), causes the AltTab function not working, creating a sticky <alt> key.
- Has `WIN` key conflict when AHK with StartIsBack++. A suggest replace StartIsBack++ with Start10, or use system start.

## Main changes, Windows key, other
- Command-<shift>-R, Reload the AHK Script.
- F16 is the <insert>, becouse unable to capture the <fn> key.
- F18, Start UltraEdit
- F19, Start calculator
- *Capslock is disabled
- Command-<shift>-Q, Lock & Dim screens
- Command-<ctrl>-<shift>-Q, Computer Sleep

## Mouse, Reverse scrolling is disabled in the macOS_mouse.ahk script.
I'm using Wizmouse, becouse of the focus/scroll option.

(Hovering over an inactive program scrolling works on that program)

http://antibody-software.com/web/software/software/wizmouse-makes-your-mouse-wheel-work-on-the-window-under-the-mouse/

## UltraEdit project file
- UE-AutoHotKey-2016.prj | UltraEdit Project file

