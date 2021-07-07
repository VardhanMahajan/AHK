 


#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()

keyboardId := AHI.GetKeyboardId(******, ******)
AHI.SubscribeKeyboard(keyboardId, true, Func("KeyEvent"))


return

KeyEvent(code, state){
	ToolTip % "Keyboard Key - Code: " code ", State: " state
}



^Esc::
	ExitApp