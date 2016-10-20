; Note: Go to line 63 to map your command to the Eject key.
; Thanks, http://www.overclock.net/t/1231886/guide-using-the-apple-wired-keyboard-in-windows-7
;
Gui, Show, x0 y0 h0 w0, FnMapper
fnPressed := 0
HomePath=AutohotkeyRemoteControl.dll
hModule := DllCall("LoadLibrary", "str", HomePath)
OnMessage(0x00FF, "InputMsg")
EditUsage := 1
EditUsagePage := 12
HWND := WinExist("FnMapper")
nRC := DllCall("AutohotkeyRemoteControl\RegisterDevice", INT, EditUsage, INT, EditUsagePage, INT, HWND, "Cdecl UInt")
WinHide, FnMapper
InputMsg(wParam, lParam, msg, hwnd) 
{
  DeviceNr = -1
  nRC := DllCall("AutohotkeyRemoteControl\GetWM_INPUTDataType", UINT, wParam, UINT, lParam, "INT *", DeviceNr, "Cdecl UInt")
  if (errorlevel <> 0) || (nRC == 0xFFFFFFFF) 
  {
        MsgBox GetWM_INPUTHIDData fehlgeschlagen. Errorcode: %errorlevel%
        gosub cleanup
  }
  ;Tooltip, %DeviceNr%
  ifequal, nRC, 2
  {
    ProcessHIDData(wParam, lParam)
  }
  else 
  {
        MsgBox, Error - no HID data
  }
}
Return

ProcessHIDData(wParam, lParam)
{
        ; Make sure this variable retains its value outside this function
        global fnPressed
        global ejectPressed
        
  DataSize = 5000
  VarSetCapacity(RawData, %DataSize%, 0)
  RawData = 1
  nHandle := DllCall("AutohotkeyRemoteControl\GetWM_INPUTHIDData", UINT, wParam, UINT, lParam, "UINT *" , DataSize, "UINT", &RawData, "Cdecl UInt")
  KeyStatus := NumGet(RawData, 1,"UChar")
  Transform, FnValue, BitAnd, 16, KeyStatus
  Transform, EjectValue, BitAnd, 8, KeyStatus
   
  if (FnValue = 16) {
        MsgBox function pressed
        fnPressed := 1
        SendInput {F21}
        return
  } else {
                fnPressed := 0
  }

  if (EjectValue = 8) {
        ejectPressed := 1

        SendInput {F20}

        } else {
        ejectPressed := 0
  }

} ; END: ProcessHIDData

; If there was an error retrieving the HID data, cleanup
cleanup:
DllCall("FreeLibrary", "UInt", hModule)  ; It is best to unload the DLL after using it (or before the script exits).
ExitApp