#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir `%A_ScriptDir`%  ; Ensures a consistent starting directory.
; EnvGet, Quả Cầu, Quả Cầu

; Menu, Tray, Icon, %Quả Cầu%\asset_10_3x_dDW_icon.ico
#SingleInstance force 

if not A_IsAdmin
  Run *RunAs "%A_ScriptFullPath%"
Process Priority,, A
SetTitleMatchMode, 2
; CheckScriptUpdate()
; #SingleInstance force
; FileGetTime ScriptStartModTime, `%A_ScriptFullPath`%
; SetTimer CheckScriptUpdate, 100, 0x7FFFFFFF ; 100 ms, highest priority

; CheckScriptUpdate() {
    ; global ScriptStartModTime
    ; FileGetTime curModTime, `%A_ScriptFullPath`%
    ; If (curModTime <> ScriptStartModTime) {
        ; Loop
        ; {
            ; reload
            ; Sleep 300 ; ms
            ; MsgBox 0x2, `%A_ScriptName`%, Reload failed. ; 0x2 = Abort/Retry/Ignore
            ; IfMsgBox Abort
                
            ; IfMsgBox Ignore
                ; break
        ; } ; loops reload on "Retry"
    ; }
; }
; MsgBox, , , Reload!

text_NhomNoiBo := "
(
Vì đây là nhóm nội bộ, nên bọn mình cần đảm bảo là những người vào cũng đã tìm hiểu đôi chút về cách vận hành của nhóm rồi 
Mình hiểu là việc tìm hiểu sẽ khó khăn, nên mình nhắn bạn để hỏi xem bạn cần hỗ trợ gì không, để việc tìm hiểu nhóm trở nên đơn giản nhất có thể với bạn 
Một lần nữa cảm ơn bạn đã quan tâm đến nhóm nhé. Chúc bạn một ngày vui vẻ
)"
lines := StrSplit(text_NhomNoiBo, "`n", "`r")

text_Unfriend := "
(
Em xin chào chị Trang
Em có thấy chị vừa mới unfriend em
Thực ra thì em cũng hiểu là chuyện này là chuyện bình thường, bản thân em cũng có làm vậy nên em không có vấn đề gì
Nhưng nếu được thì em cũng muốn xin được hỏi chị lý do là gì
Chỉ mất một hai phút để giải thích, nhưng nó lại giúp em được rất nhiều
Vì em nghĩ chúng ta cũng đã là friend với nhau khá lâu. Tuy chưa nói chuyện gì nhiều nhưng cũng không đến mức phải unf. Nên nếu chuyện này xảy ra thì hẳn có một lý do nào đó
Có thể em đã làm điều gì đó khiến chị không vui chăng?
Thực ra nếu là do chị không muốn giữ mối quan hệ với quá nhiều người thì em cũng là người như vậy,

.

)" 
i := 10


:*:bld1::Connections between cognitive linguistics, cognitive psychology, Buddhism and Daoism {bs} 
:*:bld2::Cognitivism & physicalism {bs} 
:*:blre::Red herring names {bs} 
:*:blma::Making concrete analogies and big picture {bs} 
:*:blpe::A theory of perspective {bs} 
:*:blle::Learn vocab from context {bs} 
:*:blis::Is informed consent really justified? {bs} 

:*:blsc::Process scanned books {bs} 
:*:blho::How I use Google Keep {bs} 
:*:blgr::A highly efficient GRE Anki deck to learn {bs} 


; :*:vld1::Lyminhnhat.com`/linguist?cs-psychology-buddhism-daoism {bs}
:*:vld2::lyminhnhat.com`/the-cognitivism-and-physicalism-in-daoism-and-buddhism {bs}
:*:vlre::Lyminhnhat.com`/the-linguistic-and-cognitive-aspects-of-red-herring-names-and-formal-definitions {bs}
:*:vlma::Lyminhnhat.com`/concrete-analogies-big-pictures {bs}
:*:vlpe::Lyminhnhat.com`/a-theory-of-perspective-full-text/ {bs}
:*:vlle::Lyminhnhat.com`/learn-vocab-from-context {bs}
:*:vlis::Lyminhnhat.com`/is-informed-consent-really-justified/ {bs}

:*:vlsc::Lyminhnhat.com`/process-scanned-books {bs}
:*:vlho::Lyminhnhat.com`/how-i-use-google-keep {bs}
:*:vlgr::Lyminhnhat.com`/gre-anki

:*:cper::Perspectives {bs} 
:*:cpro::Productivity
:*:cst::Standalone articles


:*T:ccm::Cuộc cách mạng một-cọng-rơm
:*T:bst::Bộ sưu tập từ điển chuyên ngành
:*T:sblhd::sự bất lực học được
:*T:blhd::bất lực học được
:*T:ncnt::người có niềm tin tiêu cực

:*T:ncs::Một đám mây chim sáo
:*T:nnc::Nghiên cứu triết học phương Đông
:*T:nma::Mạng lưới người thân, bạn bè của ncnttc
:*T:nnp::NPO Forum (Diễn đàn phi lợi nhuận)
:*T:qp::Quả Cầu page

::fqc::https://www.facebook.com/qua.cau.the.sphere
:*T:fqp::https://www.facebook.com/quacau.sphere/
:*T:aivay::Chào bạn. Cho mình hỏi bạn là ai vậy? Cám ơn bạn nhé
:*T:camon::À vậy à. Cảm ơn bạn đã có hứng thú theo dõi nhé. Nếu quan tâm mời bạn add Facebook này nhé. Mình hay hoạt động trên đó hơn 😊 +{Enter}  facebook.com/qua.cau.the.sphere
:*:;di::https://discord.gg/jWTk4EHFK2
:*:;gm::https://meet.google.com/csb-qgqa-hvx
:*:doithoai::đối ⊷ thoại
:*:bocai::https://github.com/QuaCau-TheSphere/LOS-Installer/releases/latest
:*T:mota::Quả Cầu hướng đến việc trở thành một tổ chức không có sự phân cấp và người tham gia không làm vì trách nhiệm, lấy nhu cầu của thành viên (vốn nhiều vô kể và thay đổi liên tục) làm mục tiêu của tổ chức, để họ trở thành những người có kỹ năng đa dạng, tư duy liên ngành, và sự khoẻ mạnh và hạnh phúc toàn diện, dựa trên triết học của Deleuze và Guattari, khoa học phức hợp, game phiêu lưu nhập vai, nền kinh tế không dùng tiền, và web ngữ nghĩ.
:*T:baigoc::(Bài gốc đăng tại https://doi-thoai.deno.dev/. Định dạng trên đó sẽ tốt hơn trên Facebook, và nếu có gì thay đổi sẽ cập nhật trên đó trước.) 
:*T:thunghiem::
SendInput,
(
Vì công cụ đang ở giai đoạn alpha, tức là còn nhiều chức năng chưa có, chỉ có cái phần quan trọng nhất là cái đồ thị thôi. Anh cũng chưa viết hướng dẫn sử dụng, cũng chưa viết bài phân tích về nó nên có thể em hơi khó hiểu. Với lại vì là bản alpha nên em hạn chế chia sẻ ra ngoài giúp anh nhé. Cũng không có gì bí mật hay rủi ro gì đâu, chỉ là kinh nghiệm viết phần mềm là chừng nào hoàn thành đầy đủ rồi thì hẵng công khai. Nếu em thấy ai cần ngay thì cứ đưa để tham khảo cũng được, vì anh cũng cần có phản hồi
)
return

:*T:thamgia::
    SendInput,
    (
    Chào bạn ____________________. Cảm ơn bạn đã tham gia vào nhóm "Một đám mây chim sáo" facebook.com/groups/dammaychimsao ^{Home}{right 9}
    )
    i := 1
return
 
~Enter::
    if (!i || i > lines.length())
        return
    
    SendInput, % "{Text}" lines[i]
    i++
return

:*T:ungho::
SendInput,
(
Nếu bạn muốn ủng hộ, vui lòng chuyển khoản vào tài khoản sau:

🍀 Chủ tài khoản: Lý Minh Nhật
🍀 Ngân hàng: Vietcombank chi nhánh Bến Thành
🍀 Số tài khoản: 033 1000 438 307
🍀 Vui lòng ghi theo cú pháp: UHQC_tên người gửi_lời nhắn

Hoặc:
PayPal: https://www.paypal.me/LyMinhNhat
Patreon: https://www.patreon.com/ooker
)

:*T:binhluan::(Các nguồn và các liên kết bổ trợ nằm trong bài gốc đặt ở dưới bình luận. Định dạng ở bài gốc tốt hơn trên Facebook, và nếu có gì thay đổi sẽ cập nhật trên đó trước.)
:*T:fbchinh::Đây là fb thật của  facebook.com/Ooker.Human {left 30}

ScrollLock::Run Notepad++.exe "D:\Dropbox\Config\AutoHotKey\Quacau.ahk"
!ScrollLock::Reload

#IfWinActive, ahk_class Notepad++
~^s::
Reload
MsgBox, , , Reload!
return