; #Requires AutoHotkey v2.0+
; #SingleInstance Force
; ~^s:: {
;     if InStr(WinGetTitle("A"), ".ahk") {
;         Reload
;     }
; }
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn Unreachable, StdOut ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Process Priority,, A
SetTitleMatchMode, 2
#Persistent
#SingleInstance force

EnvGet, QC_VAULTS, QC_VAULTS

if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%"
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

#Include Hotstrings.ahk
#Include Premade Libraries\HTML.ahk
#Include Premade Libraries\Latex2Unicode.ahk
#Include Premade Libraries\emoji.ahk
#Include Premade Libraries\AutoCorrect.ahk
#Include Premade Libraries\Appskey.ahk
#Include Premade Libraries\Side scripts.ahk


; WINDOWS CONTROL
; =============
>!\::AltTab
>^CapsLock::CapsLock
>^esc::Shutdown, 1
>^+esc::Shutdown, 2
Capslock::Ctrl
#Space:: Winset, AlwaysOnTop, Toggle, A
NumLock::CapsLock
+NumLock::NumLock

#^e::Run D:\Programming\
#+e::Run D:\Dropbox\Config\AutoHotKey\
#!e::
	FormatTime, CurrentYearMonth,, yyyy-MM
	Run D:\Dropbox\Config\ShareX\Screenshots\%CurrentYearMonth%
return

#IfWinNotActive, ahk_exe inkscape.exe 
    F1::Run, D:\Downloads
#IfWinNotActive

^f1::Run obsidian:///%QC_VAULTS%\A Vùng đất Quả Cầu\v3
^!f1::Run %QC_VAULTS%\A Vùng đất Quả Cầu\v3
#f1::Run G:\My Drive\Quả Cầu\6 Tổ chức\B Nội dung\Media
#!f1::Run %QC_VAULTS%\9 Tài liệu khác\99 Tài liệu khác\Media
!f1::Run G:\My Drive\Quả Cầu\6 Tổ chức\B3 Thiết kế\

^f2::Run obsidian:///%QC_VAULTS%\B Đáp ứng nhu cầu\B Tồn tại trong thế giới tư bản
^!f2::Run %QC_VAULTS%\B Đáp ứng nhu cầu\B Tồn tại trong thế giới tư bản

^f3::Run obsidian:///%QC_VAULTS%\C Hệ thống tri thức cộng đồng\C Obsidian`, quản lý dự án và công cụ nghĩ\
^!f3::Run %QC_VAULTS%\C Hệ thống tri thức cộng đồng\C Obsidian`, quản lý dự án và công cụ nghĩ\

^f4::Run obsidian:///%QC_VAULTS%\E Mạng lưới người thân`, bạn bè của người có niềm tin tiêu cực\HeavyT
^!f4::Run %QC_VAULTS%\E Mạng lưới người thân`, bạn bè của người có niềm tin tiêu cực\HeavyT

^f5::Run obsidian:///%QC_VAULTS%\E Mạng lưới người thân`, bạn bè của người có niềm tin tiêu cực\Sự khoẻ mạnh và hạnh phúc toàn diện
^!f5::Run %QC_VAULTS%\E Mạng lưới người thân`, bạn bè của người có niềm tin tiêu cực\Sự khoẻ mạnh và hạnh phúc toàn diện

^f6::Run obsidian:///%QC_VAULTS%\Z Bước Chân
^!f6::Run %QC_VAULTS%\Z Bước Chân

#o::Run obsidian:///D:\Programming\Obsidian\obsidian-hub


#`::Run Notepad++		

f4::Send !{f4}
#IfWinActive ahk_exe Discord.exe 
    f4::WinClose
#IfWinActive
Pause::Run Notepad++.exe "D:\Dropbox\Config\AutoHotKey\! Main.ahk"
+Pause::Suspend
!Pause::Reload
^Pause::Run Notepad++.exe "D:\Dropbox\Config\AutoHotKey\Hotstrings.ahk"

>^f1::Volume_Up
>^f2::Volume_Down
>^f3::Volume_Mute
>^f4::Media_Play_Pause

#y::Run wt -d "%QC_VAULTS%" 
#z::Run Notepad++.exe D:\Dropbox\Config\PowerShell\Startup.ps1
:*:vvv::
InputBox, UserInput, WORD, Enter a WORD, , 200, 120
if not ErrorLevel
{
    UserInput := trim(UserInput)                                  ; remove first and last white spaces   
    UserInput := StrReplace(UserInput, A_Space , "+", UserInput)  ; replace all middle white spaces with +
	; Run, https://www.macmillandictionary.com/dictionary/british/%UserInput%
	; Run, https://www.collinsdictionary.com/dictionary/english/%UserInput%
	Run, https://www.vocabulary.com/dictionary/%UserInput%
	; Run, https://www.ldoceonline.com/dictionary/%UserInput%
    Run, http://tratu.coviet.vn/hoc-tieng-anh/tu-dien/lac-viet/ALL/%UserInput%.html
}
return

; Airmouse
Media_Prev::Send !{f4}

#IfWinActive, ahk_class MozillaWindowClass
f10::Run % A_programfiles "\Mozilla Firefox\firefox.exe about:preferences"
f3::Send ^+u
+f3::Send ^+y
Media_Play_Pause::f9
return

#IfWinActive, ahk_exe javaw.exe     ;jpdfbookmark
f5::Send ^o		 			        ;open pdf
f6::Send ^!l				        ;load bookmark
f7::Send !t{Up 2}{enter}			;enter offset value
f8::Send ^!a		         	    ;set destination
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
+`::Suspend
return

#IfWinActive, ahk_class SUMATRA_PDF_FRAME
Media_Play_Pause::
b::Send {f12}			;Bookmark 
`::Send ^2 				;Zoom fit
x::Send ^w				;Close tab
a::Send {NumpadMult}	;Rotate
f::Send {f11}			;Fullscreen
^PgDn::^tab
^PgUp::^+tab
Browser_Home::
Left::Send +{left}
Right::Send +{right}
+Left::send {left}
+Right::send {Right}
Up::Send +{up}          ;Bookmark panel also use ↑ and ↓ to 
Down::Send +{Down}      ;quickly scroll page up but not affect in bookmark
+Up::Send {up}          ;
+Down::Send {Down}      ;
+`::Suspend
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
f11::send {f11}!wi2
~^PgUp::
~^PgDn::
~^n::
~^Tab::
~^+Tab::Send {f11}!wi2{f11}
~^g::
    Send {f11}^g
    Input, key, V L1, {Enter}
    if (ErrorLevel == "EndKey:Enter")
        Send {Enter}!wi2{f11}
return

#IfWinActive, ahk_class FBReader
enter::PGDN
Browser_Home::PGUP
f::Enter
return

#IfWinActive, ahk_exe vivaldi.exe
f10::!p
return

