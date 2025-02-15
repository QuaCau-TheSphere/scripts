#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Process Priority,, A
SetTitleMatchMode, 2

#SingleInstance force
FileGetTime ScriptStartModTime, %A_ScriptFullPath%
SetTimer CheckScriptUpdate, 100, 0x7FFFFFFF ; 100 ms, highest priority

CheckScriptUpdate() {
    global ScriptStartModTime
    FileGetTime curModTime, %A_ScriptFullPath%
    If (curModTime <> ScriptStartModTime) {
        Loop
        {
            reload
            Sleep 300 ; ms
            MsgBox 0x2, %A_ScriptName%, Reload failed. ; 0x2 = Abort/Retry/Ignore
            IfMsgBox Abort
                ExitApp
            IfMsgBox Ignore
                break
        } ; loops reload on "Retry"
    }
}

#Include chao.ahk
#Include Hotstrings.ahk
#Include Premade Libraries\HTML.ahk
#Include Premade Libraries\Latex2Unicode.ahk
#Include Premade Libraries\emoji.ahk
#Include Premade Libraries\AutoCorrect.ahk
#Include Premade Libraries\Appskey.ahk
#Include Premade Libraries\Side scripts.ahk

; WINDOWS CONTROL
; =============

Capslock::Ctrl
#Space:: Winset, AlwaysOnTop, Toggle, A
NumLock::CapsLock
+NumLock::NumLock
#e::Run D:\Dropbox\Config\AutoHotKey\
#+e::Run E:\
#m::Run D:\Dropbox\Web-wrapper\Gmail-win32-ia32\Gmail.exe
#s::Run C:\Users\Ooker\AppData\Local\messengerfordesktop\Update.exe --processStart "Messenger for Desktop.exe"
#k::
    Run D:\Dropbox\Web-wrapper\Google Keep-win32-ia32\Google Keep.exe
    Sleep, 1000
    Send #{Up}
    return
#a::
    Run D:\Dropbox\ProductivityTools.exe
    Sleep 500
    ControlSend,, {tab}{enter}, ahk_exe ProductivityTools.exe
    Sleep 500
    ControlSend,, {tab 2}{enter}, ahk_exe ProductivityTools.exe
    Sleep 500
    ControlSend,, {tab}{enter 2}{tab}{enter}{down}{enter}, ahk_exe ProductivityTools.exe
    Send, !{f4} 
    return  
#z::Run C:\Program Files\Notepad++\notepad++ D:\Dropbox\Config\Startup.ps1
f1::Run D:\Download
+f1::Run D:\Google Drive\Ebooks
^f1::Run D:\Dropbox\Config\ShareX\Screenshots
#f1::Run D:\OneDrive
f4::Send !{f4}
Pause::Run "C:\Program Files\AutoHotkey\SciTE\SciTE.exe" "D:\Dropbox\Config\AutoHotKey\! Main.ahk"
+Pause::Suspend
!Pause::Reload

; Airmouse
Media_Prev::Send !{f4}

; VIETGLE
;~ #^v::Run D:\Google Drive\Dictionaries\Tiếng Việt\Việt Anh.pdf
;~ :*:vv::
;~ InputBox, UserInput, WORD, Enter a WORD (Coviet + ldoce), , 200, 120
;~ if not ErrorLevel
;~ {
    ;~ ; remove first and last white spaces
    ;~ UserInput := trim(UserInput)
    ;~ ; replace all middle white spaces with +
    ;~ UserInput := StrReplace(UserInput, A_Space , "+", UserInput)
    ;~ Run, http://tratu.coviet.vn/hoc-tieng-anh/tu-dien/lac-viet/ALL/%UserInput%.html
	;~ ; Run, https://www.macmillandictionary.com/dictionary/british/%UserInput%
	;~ ; Run, https://www.collinsdictionary.com/dictionary/english/%UserInput%
	;~ Run, https://www.ldoceonline.com/dictionary/%UserInput%
;~ }
;~ return

#IfWinActive, ahk_class MozillaWindowClass
f10::Run % A_programfiles "\Mozilla Firefox Quantum\firefox.exe about:preferences"
f3::Send ^+u
+f3::Send ^+y
return

#IfWinActive, ahk_exe javaw.exe ;jpdfbookmark
1::Send ^o		 			    ;open pdf
2::Send ^!l				        ;load bookmark
3::Send !to{enter}			    ;enter offset value
return

#IfWinActive, ahk_class DSUI:PDFXCViewer
1::Send !vlc^2
f10::Send ^k
j::Down
k::Up
b::Send !vb
f::
f12::Send {f12}{f11}{f12}{f11}{f12}{f11}!vlc^2{+ 2}
Browser_Home::
u::Send +{Space}
d::Send {Space}
+u::Send {Home}
h::
Left::Send +{left}
l::
Right::Send +{right}
+Left::send {left}
+Right::send {Right}

return

#IfWinActive, ahk_class SUMATRA_PDF_FRAME
Media_Play_Pause::
b::Send {f12}
w::
1::Send ^2
x::Send ^w
a::Send {NumpadMult}
f::Send {f11}
Browser_Home::
u::Send +{Space}
d::Send {Space}
+u::Send {Home}
h::
Left::Send +{left}
l::
Right::Send +{right}
+Left::send {left}
+Right::send {Right}
Up::Send +{up}          ;Bookmark panel also use ↑ and ↓ to 
Down::Send +{Down}      ;quickly scroll page up but not affect in bookmark
+Up::Send {up}          ;
+Down::Send {Down}      ;
`::Suspend
return 

#Ifwinactive, ahk_exe vlc.exe
Media_Play_Pause::Media_Play_Pause
;~ Media_Prev::Media_Prev
;~ Media_Next::Media_next
return

#IfWinActive, ahk_exe ONENOTE.EXE
WinActivate WinWaitActive, ONENOTE.EXE
    sleep, 3000 
    Send !wi
f11::send !wi{f11}
~^PgUp::
~^PgDn::
~^n::
~^Tab::
~^+Tab::Send {f11}!wi{f11}
~^g::
    Send {f11}^g
    Input, key, V L1, {Enter}
    if (ErrorLevel == "EndKey:Enter")
        Send {Enter}!wi{f11}
return

#IfWinActive, ahk_class FBReader
enter::PGDN
Browser_Home::PGUP
f::Enter
return

#IfWinActive, ahk_exe vivaldi.exe
f10::!p
return

#IfWinActive, ahk_exe Google Keep.exe
f2::send, %ClipBoard%
f3::send ^+v
return
;~ ^#v::                            
   ;~ Clip0 = %ClipBoardAll%
   ;~ ClipBoard = %ClipBoard%       ; Convert to text
   ;~ Send ^v                       ; For best compatibility: SendPlay
   ;~ Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ;~ ClipBoard = %Clip0%           ; Restore original ClipBoard
   ;~ VarSetCapacity(Clip0, 0)      ; Free memory

;~ #IfWinActive, ahk_class ConsoleWindowClass
;~ !vk73::WinClose
;~ ^w::WinClose
;~ ^v::send,%Clipboard%
;~ return

;~ ; powershell custom select statement
;~ AppsKey & 2::
;~ keywait AppsKey
;~ keywait 2
;~ Send,@{{}n{=}{'}{'}{;}e{=}{{}{}}{}}{left 7}
;~ Return

;~ ; Comment or uncomment selected PowerShell code
;~ AppsKey & 3::
;~ GetText(TempText)
;~ If (SubStr(TempText, 1, 1) = "#")
   ;~ TempText := RegExReplace(TempText, "`am)^#")
;~ Else
   ;~ TempText := RegExReplace(TempText, "`am)^", "#")
;~ PutText(TempText)
;~ Return
;~ #IfWinActive
