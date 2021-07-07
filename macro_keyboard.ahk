#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
#Persistent
#include <AutoHotInterception>

AHI := new AutoHotInterception()

keyboardId := AHI.GetKeyboardId(******, ******)
AHI.SubscribeKeyboard(keyboardId, true, Func("KeyEvent"))
return
;ones with ---------- are used


KeyEvent(code, state){
	;######## ALL KEY NUMBERS ############
		;{======= NUMPAD ID ==================
		;NumPad0 = 82 --------------------
		;NumPad1 = 79
		;NumPad2 = 80
		;NumPad3 = 81
		;NumPad4 = 75 ---------------------
		;NumPad5 = 76 ---------------------
		;NumPad6 = 77 ---------------------
		;NumPad7 = 71 ---------------------
		;NumPad8 = 72 ---------------------
		;NumPad9 = 73 ---------------------
		;
		;NumLock = 325
		;Slash(/) = 309
		;Asterisk(*) = 55
		;Minus(-) = 74
		;Plus(+) = 78
		;Enter = 284
		;Dot(.)/Delete = 83
		;}
		;{======= Arrow Keys ID ==============
		;Up = 328
		;Down = 336
		;Left = 331
		;Right = 333
		;
		;}
		;{======= F Keys ID ==================
		;F1 = 59
		;F2 = 60
		;F3 = 61
		;F4 = 62
		;F5 = 63
		;F6 = 64
		;F7 = 65
		;F8 = 66
		;F9 = 67
		;F10 = 68
		;F11 = 87
		;F12 = 88
		;}
		;{======= Main Numbers Row ID ========
		;Tilde = 41
		;1 = 2
		;2 = 3
		;3 = 4
		;4 = 5
		;5 = 6
		;6 = 7
		;7 = 8
		;8 = 9
		;9 = 10
		;0 = 11
		;Dash/Minus/Underscore = 12
		;Plus/Equal Sign = 13
		;BackSlash = 43
		;BackSpace = 14
		;}
		;{======= Tab-Qwerty Row ID ==========
		;Tab = 15
		;Q = 16
		;W = 17
		;E = 18
		;R = 19
		;T = 20
		;Y = 21
		;U = 22
		;I = 23
		;O = 24
		;P = 25
		;Left Square Bracket("[") = 26
		;Right Square Bracket("]") = 27
		;}
		;{======= Caps-ASD Row ID ============
		;CapsLock = 58 -----------------------
		;A = 30
		;S = 31
		;D = 32
		;F = 33
		;G = 34
		;H = 35
		;J = 36
		;K = 37
		;L = 38
		;Semicolon(";") = 39
		;Apostrophe("'") = 40
		;Enter = 28
		;}
		;{======= Shift-ZXC Row ID ===========
		;Left Shift = 42 ---------------------
		;Z = 44 ------------------------------
		;X = 45 ------------------------------
		;C = 46
		;V = 47
		;B = 48
		;N = 49
		;M = 50
		;Comma(",") = 51
		;Dot(".") =  52
		;Slash(/) = 53
		;Right Shift = 310
		;}
		;{======= Gtrl/Spacebar Row ID =======
		;Left Ctrl = 29 ----------------------
		;Windows Button = 347 ----------------
		;Left Alt = 56 -----------------------
		;Spacebar = 57 -----------------------
		;Right Alt = 312 ---------------------
		;***Left Windows Button = 348
		;***Mistery Key With some list menu and mouse cursor = 349
		;Right Ctrl = 285 -------------------
		;}
		;{======= Print Screen Buttons =======
		;PrtSc = 311
		;ScrLk = 70
		;Pause = 325
		;Insert = 338
		;Home = 327
		;Page Up = 329
		;Delete = 339
		;End = 335
		;Page Down  = 337
		;}



    if !state
        return

    if code = 44 ; z
    {
        Send ^c
        Sleep 50
        Run % "https://www.google.com/search?q=" Clipboard
    }
    else if code = 29 ;left control
	{
		Run https://youtube.com
	}
	else if code = 57 ;space bar
	{
	Send, {LWin down}
	Send, {d}
	Send, {LWin up}
	}
	else if code = 284 ;Num Enter
	{
		Run, location of your music players exe
	}
	else if code = 2 ;Keyboard 1 - whatsapp
	{
		Run, location of your whatsapp exe
	}
	else if code = 3 ;Keyboard 2 - inkscape
	{
		Run, location of inkscape exe
	}
	else if code = 4 ;Keyboard 3 - figma
	{
		Run, location of figma exe
	}
	else if code = 5 ;Keyboard 4 - notion
	{
		Run, location of notion exe
	}
	else if code = 6 ;Keyboard 5 - discord
	{
		Run, location of discord exe
	}
	else if code = 7 ;Keyboard 6 - chrome
	{
		Run, location of chrome exe
	}
	else if code = 56 ;Left Alt
	{
		Run "https://www.reddit.com/"
	}
	else if code = 45 ;X 
	{
		Run "https://stackoverflow.com/" 
	}
	else if code = 46 ;c 
	{
		Run "https://www.netflix.com/browse" 
	}
	else if code = 47 ;v :::::::::::::::::::::::::::
	{
		Run "https://materializecss.com/" 
	}
	if code = 48 ; b
    {
        Send ^c
        Sleep 50
        Run % "https://www.youtube.com/results?search_query=" Clipboard
    }
	else if code = 347 ;Windows key
	{
		Run "https://mail.google.com/mail/u/0/#inbox"
	}
	else if code = 285 ;Right control
	{
		Run, location of some txt
	}
	else if code = 58 ;CAPS LOCK
	{
		if GetKeyState("CapsLock", "T") = 1
		 {
		   SetCapsLockState, off
		 }
		else if GetKeyState("CapsLock", "F") = 0
		 {
		   SetCapsLockState, on
		 }
	}
	;multiple clipboard ---------------------------------------------
	else if code = 75 ;Num 4 -> paste 1
	{
		Paste(1)
	}	
	else if code = 76 ;Num 5 -> paste 2
	{
		Paste(2)
	}
	else if code = 77 ;Num 6 -> paste 3
	{
		Paste(3)
	}
	else if code = 71 ;Num 7 -> copy 1
	{
		Copy(1)
	}	
	else if code = 72 ;Num 8 -> copy 2
	{
		Copy(2)
	}
	else if code = 73 ;Num 9 -> copy 3
	{
		Copy(3)
	}
	;now volume controls/ pause and play ---------------------------------------------
	else if code = 79 ;Num1
	{
		Send {Volume_Up}
	}
	else if code = 80 ;Num2
	{
		Send {Volume_Mute}
	}
	else if code = 81 ;Num3
	{
		Send {Volume_Down}
	}
	else if code = 82 ;Num0
	{
		Send {Media_Play_Pause}
	}
	;search YT
	; For tool tips
	;ToolTip % "Keyboard Key - Code: " code ", State: " state
}

^Esc::
	ExitApp
	
	
;---------------functions---------------------------------------------
;---------------------------------------------------------------------
;---------------------------------------------------------------------
;---------------------------------------------------------------------
Copy(clipboardID)
{
	global ; All variables are global by default
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard = ; Erase the clipboard first, or else ClipWait does nothing
	Send ^c
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	if ErrorLevel 
	{
		Clipboard := oldClipboard ; Restore old (real) clipboard
		return
	}
	
	ClipboardData%clipboardID% := ClipboardAll
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
}


Paste(clipboardID)
{
	global
	local oldClipboard := ClipboardAll ; Save the (real) clipboard

	Clipboard := ClipboardData%clipboardID%
	Send ^v

	Clipboard := oldClipboard ; Restore old (real) clipboard
	oldClipboard = 
}