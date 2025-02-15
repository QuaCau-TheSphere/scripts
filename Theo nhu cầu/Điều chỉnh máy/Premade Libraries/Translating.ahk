#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
FileGetTime ScriptStartModTime, %A_ScriptFullPath%
SetTimer CheckScriptUpdate, 100, 0x7FFFFFFF ; 100 ms, highest priority

; VIETGLE
:*:vv::
InputBox, UserInput, WORD, Enter a WORD, , 200, 120
if not ErrorLevel
{
    ; remove first and last white spaces
    UserInput := trim(UserInput)
    ; replace all middle white spaces with +
    UserInput := StrReplace(UserInput, A_Space , "+", UserInput)
    Run, http://tratu.coviet.vn/hoc-tieng-anh/tu-dien/lac-viet/ALL/%UserInput%.html
}
return

;SCROLLING TWO WINDOWS SIMULTANEOUSLY SEAMLESSLY
; SetTitleMatchMode, 2

; GroupAdd, Scroll_Group, ahk_class Writer
; GroupAdd, Scroll_Group, ahk_class FBReader

; SetWinDelay 0

; #If (WinActive("ahk_class Writer") && WinExist("ahk_class FBReader")) || (WinActive("ahk_class FBReader") && WinExist("ahk_class Writer"))

    ; PgUp::
    ; PgDn::
        MouseGetPos, mX, mY
        ; Send {%A_ThisHotKey%}
        ; GroupActivate Scroll_Group  ; activate the next window of this group
        If (A_ThisHotKey = "PgUp" || A_ThisHotKey = "PgDn")
            MouseMove, 200, 200, 0  ; move the mouse over the currently active window 
        ; Send {%A_ThisHotKey%}   
        ; GroupActivate Scroll_Group
        MouseMove, mX, mY, 0
    ; return

; #If

PgDn::
SetTitleMatchMode, 2
IfWinActive, Writer ; Replace 'Writer' by the title of the safari windows
{
        CoordMode, Mouse, Screen
        WinGet, active_id, ID, A
        IfWinExist, FBReader
        {
                Send {PgDn}
                WinActivate ; Automatically uses the window found above.
                Send {PgDn}
                WinActivate, ahk_id %active_id%
        }
}
Else
{
		Send {PgDn}
}
return
PgUp::
SetTitleMatchMode, 2
IfWinActive, Writer ; Replace 'Writer' by the title of the safari windows
{
        CoordMode, Mouse, Screen
        WinGet, active_id, ID, A
        IfWinExist, FBReader
        {
                Send {PgUp}
                WinActivate ; Automatically uses the window found above.
                Send {PgUp}
                WinActivate, ahk_id %active_id%
        }
        }
Else
{
		Send {PgUp}
}
return