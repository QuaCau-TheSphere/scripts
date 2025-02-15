; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; #Hotstring EndChars ()[]{}:;'"/\,.?!`n `t

;								FIELDS FILLING
; ==============================================================
{
:*T:ganu::ganuongphap@gmail.com
:*T:lmng::lyminhnhat911@gmail.com
:*T:qcg::quacau.thesphere@gmail.com
::lmn::Lý Minh Nhật
::lmnp::Lý Minh Nhật page

:*T:lmnc::Lyminhnhat.com
:*T:hlmnc::https://lyminhnhat.com

:T:qcc::Quảcầu.com
:*T:hqc::https://quảcầu.com

:*T:qv::xn--qucu-hr5aza.com
:*T:hqv::https://xn--qucu-hr5aza.com


:*T:qx::Quảcầu.cc
:*T:qz::xn--qucu-hr5aza.cc
:*T:hqz::https://xn--qucu-hr5aza.cc

:*T:hox::https://Obsidian.Quảcầu.cc
:*T:hoz::https://obsidian.xn--qucu-hr5aza.cc

:*T:hqs::https://quacau.space

::078::078 409 6249
:*T:0912::0912214006
:T:091::091 221 4006
:*T:079::079092007133
:*T:a1::A1.1912A The GoldView, 346 Bến Vân Đồn, Ward 1, District 4, Ho Chi Minh City, Vietnam
:*T:1013::1013124@student.hcmus.edu.vn
:*T:visa::4524041829764425 10/25 634
:*T:vcb::9704366809102284015 10/16
:*T:stkk::033 1000 438 307, Vietcombank chi nhánh Bến Thành

:*T:dfg::D@@@gd000g
:*T:dfh::D@@@gd888g
:*T:zxc::Zxc@1234
:*T:zxv::Zxc@2345
:*T:M@t::M@tkhauch1nh

}
;								QUICK TYPING
; ==============================================================

:C:se::Stack Exchange {bs}
:*T:se2::Stack&20Exchange
:*T:.se1::.StackExchange.com
:*T:.se]::.se]
::se{:}::se:
::se1::se

::ahk::AutoHotKey 
:*T:ahkk::ahk
:*T:ifmm::I Feel Myself 
:*:\ga::Google Analytics {bs}
::youtube::YouTube 
:*:iki::Wikipedia {bs}
::illu::Illustrator 
:*:gvv::Graphviz 
:*:pss::PowerShell {bs}
:*:npp::Notepad{+ 2}
::wp::WordPress 
:*:tt1::Twenty Twenty-One 
:*T:fbb::Facebook 
::nj::Neo4j 
:T:tlh::tâm lý học 
:*T:dvtd::Dấu vết thiên di
:*:clg::console.log(){left}
:*:pdff::filetype:pdf {backspace}
:*:indexx::intitle:"index.of" -inurl:(html|htm|php|asp|jsp) type:(pdf|epub|mob)`
:*T:sdt::SĐT: 
:*T:verr::Windows 11 Home Single Language Version 10.0.22000 Build 22000, Firefox 89.0.1 (64-bit)

:*:obs::Obsidian 
:*T:qq::？
:*T:app.::app.plugins.plugins.
:*:shrug::¯\_(ツ)_/¯ 

;;Symbols
:*:()::() {Left 2}
;~ :*:'::'' {Left 2}
:*:""::"" {Left 2}
:*:[]::{[ 2}{bs}}{]} {Left 2}
:*:{}::{{ 2}{bs}{}} {Left 2}
:*:==-::{Enter}===================={Enter}
:*:__-::____________________
:*:->>::→ `
:*T:<->::↔ 
:*:=>>::⇒
:*T:<=>::⇔
:*T::cross::❌
:*T:\cross::❌
:*T::check::✔
:*T:\check::✔
:*:\quote::❝ ❞{left}{bs}
:*T:\tabb::	‎
:*T:ndash::–
:*T:mdash::—
:*T:\flo::❀❀❀❀❀❀❀❀❀❀
:*:nbsp::&nbsp;{Enter} 
:*:kbd::<kbd></kbd>{left 6}
:*T:^_^::😊
:*T::'D::😄
:*T:lol::😂
:T:bsq::⬛ 
:T:bul::•
:T:bull::    ◦ 
:*:<sm::<small></small>{left 8} 
:*:sxs::<span class="has-extra-small-font-size"></span>{left 7}

; ^+x::
	; clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
	; Send ^c
	; ClipWait  ; Wait for the clipboard to contain text.
	; clipboard := ""<span class="has-extra-small-font-size">""  . clipboard . "</span>" 
	; MsgBox Control-C copied the following contents to the clipboard:`n`n%clipboard%
	; Send ^v
	; return
::br::
SendInput `
(
<br>

<sup>: </sup>
)
Send {Left 6}^v{Home}{Right 5}{Up}
return

#IfWinNotActive

;								LINKS
; ==============================================================
{ 
:*T:lnai::[naïve realism](https://en.wikipedia.org/wiki/Na%C3%AFve_realism_(psychology\))
:*T:lsci::[scientism](https://en.wikipedia.org/wiki/Scientism) 
:*T:lego::[egocentrism](https://en.wikipedia.org/wiki/Egocentrism) 
:*T:lill::[illusion of transparency](https://en.wikipedia.org/wiki/Illusion_of_transparency)
:*T:lass::[assume good faith](https://en.wikipedia.org/wiki/Presumption_of_innocence)
:*T:lirr::[irrelevant conclusion](https://en.wikipedia.org/wiki/Irrelevant_conclusion)
:*T:lste::[Steelman argument](https://rationalwiki.org/wiki/Rapoport%27s_Rules)
:*T:lper::[perspective-taking](https://en.wikipedia.org/wiki/Perspective-taking)
:*T:lsoc::[Socratic questioning](https://en.wikipedia.org/wiki/Socratic_questioning)
:*T:ltho::[thought-terminating cliché](https://en.wikipedia.org/wiki/Thought-terminating_clich%c3%a9)
:*T:lfram::[frame challenge](https://interpersonal.meta.stackexchange.com/q/2511/86)

:*T:lsel::[self-conscious emotions](https://en.wikipedia.org/wiki/Self-conscious_emotions) 
:*T:llea::[learned helplessness](https://www.youtube.com/watch?v=YMPzDiraNnA)
:*T:ltip::[tip of the tongue](https://www.youtube.com/watch?v=sFeibGnZ6tc)
:*T:ltac::[tacit knowledge](https://en.wikipedia.org/wiki/Tacit_knowledge) 
:*T:ldet::[Buddhist detachment](https://en.wikipedia.org/wiki/Detachment_(philosophy\))
:*T:lcog::[Cognitive science of religion](https://en.wikipedia.org/wiki/Cognitive_science_of_religion)
:*T:ldec::[Decisional balance sheet](https://en.wikipedia.org/wiki/Decisional_balance_sheet)  
:*T:lgas::[gaslighting](https://en.wikipedia.org/wiki/Gaslighting)
:*T:lprim::[priming effect](https://www.youtube.com/watch?v=HRAKt0GakJM) 
:*T:lanki::[The highly efficient GRE Anki deck](https://ankiweb.net/shared/info/1346912511)
:*T:lmath::[There’s more to mathematics than rigour and proofs](https://terrytao.wordpress.com/career-advice/theres-more-to-mathematics-than-rigour-and-proofs/)
:*T:lgk::[how I use tags in Google Keep](https://www.reddit.com/r/GoogleKeep/comments/b7aiwn/how_to_use_tags_in_google_keep/?st=jtvg7s4j&sh=395a87ec)
:*T:lzhua::[Zhuang Zi: A funhouse mirror for the soul](https://aeon.co/classics/on-the-path-to-improvement-follow-the-jester-not-the-sage)
:*T:ldeb::[this debunking handbook](https://skepticalscience.com/docs/Debunking_Handbook.pdf) 
:*T:lsox::[Stack Overflow Extras (SOX)](https://stackapps.com/q/6091/29559)
:*T:llat::[AutoHotKey script for converting LaTeX-like input to Unicode characters](https://gist.github.com/kbauer/e8fee6514d124d5961f51fd7ba571bfd)
:*:;ho::[Hofstadter's law](https://en.wikipedia.org/wiki/Hofstadter`%27s_law): "It always takes longer than you expect, even when you take into account Hofstadter's Law." +{Enter} Định luật Hofstadter: "Mọi thứ sẽ luôn tốn thời gian hơn bạn nghĩ, kể cả khi bạn đã tính đến định luật Hofstadter." https://en.wikipedia.org/wiki/Hofstadter`%27s_law

:*T:;mot::"Một con én chỉ biết đưa thoi. Mùa xuân có đến hay không, én không đặt vấn đề." — Cao Huy Thuần
:*:;moi::"Mọi thứ sẽ luôn trông như bất khả, cho tới khi nó trở thành hiện thực" — Nelson Mandela
:*T:;ha::"Hãy luôn đi quá xa, bởi đó là nơi bạn sẽ tìm thấy sự thật." — không rõ tác giả
:*:;th::"The difference between the almost right word and the right word is really a large matter - 'tis the difference between the lightning-bug and the lightning." — Mark Twain {bs} 
:*:haveutried::I haven't. I thought this wasn't inconvenient for you for a quick reply, while with the info I can jump right to the action if it's possible, or another action if it's not possible. I thought that asking isn't a lost for you but will be a relief for me. If that's a problem then I'm sorry for not trying first
:*:;kl::
SendRaw,
(
From [How to Get Someone to Try New Things - Kletische](https://kletische.com/get-someone-try-new-things/):
>Your ability to get people to discover new things **depends on your words and actions being organized in perfect combination** with the hope of opening the locks to doors they’ve long had closed. 
)
return

:*:;ma::
SendInput,
(
Đây là một cặp câu "đối" nhau giữa Poincaré (một nhà toán học lớn) và một nhà thơ vô danh, cũng liên quan đến chủ đề khoa học - nghệ thuật:+{Enter}Toán học là nghệ thuật đặt ra cùng một cái tên cho những thứ khác nhau+{Enter}Thơ ca là nghệ thuật đặt ra những cái tên khác nhau cho cùng một thứ+{Enter}+{Enter}This is a couplet of Poincaré and an unknown poet:+{Enter}Mathematics is the art of giving the same name to different things+{Enter}Poetry is the art of giving different names to the same thing
)
return

:*:;bpd::
SendInput,
(
Bệnh này được biết nhiều hơn với cái tên rối loạn nhân cách ranh giới (borderline personality disorder - BPD). Cái tên “ranh giới” là do ngày xưa người ta tưởng nó là bệnh nằm ở giữa loạn thần kinh chức năng (neurosis) và loạn tâm thần (psychosis), rồi từ đó bị kẹt lại cho tới bây giờ. Mình ủng hộ việc gọi tên cho đúng, nên sẽ gọi nó là rối loạn nhân cách tâm trạng không ổn định (emotional unstable personality disorder - EUPD).

Mình cũng có lập một nhóm cho những ai quan tâm đến vấn đề này: https://www.facebook.com/groups/EUPD.VN/
) 
return 


:*:;no::
SendInput,
(
Nơi cuối trời nằm ngay trong tầm mắt+{Enter}Tuy xa xôi nhưng muốn đến là được+{Enter}Nhớ đem theo bia rượu hay đồ nhắm+{Enter}Ra đó ngồi tha hồ ngắm nhân gian+{Enter}+{Enter}Tại nơi ấy quá khứ gặp tương lai+{Enter}Những hồi tưởng ùa về trong tiềm thức+{Enter}Bốn mùa, buồn vui, tuổi thơ, chiếc lá+{Enter}Ta gặp lại tất cả ở một nơi.
)
return

:*:;va2::
SendInput,
(
Trước hết, mình muốn có một sự soi xét với các sách vật lý viết cho độc giả phổ thông. Mình không phủ nhận kiến thức chúng trình bày là chính xác, và đã miêu tả được vẻ đẹp của vật lý. Nhưng chúng vô tình khiến cho những ai khi nói đến vật lý sẽ nhớ đến các khái niệm như "thuyết tương đối", "lực hấp dẫn", "không thời gian", "hố đen", "cơ học lượng tử", "nguyên lý bất định", "hiệu ứng cánh bướm", v.v. Chúng vốn là các thành tựu của vật lý thế kỷ 20, nhưng khi quá tập trung vào những chủ đề này, thì những gì cốt lõi của vật lý đã bị bỏ quên. Bản thân mình cũng nghĩ nhiều nhà vật lý cũng không để ý đến điều này. Theo mình nghĩ, nếu phải miêu tả thế giới vật lý trong hai từ, thì đó sẽ là tính đối xứng và dao động tuần hoàn. Nếu phải giải thích hai cái này trong một bài viết ngắn, thì mình xin đề xuất bài này.+{Enter}+{Enter}Dưới nhãn quan vật lý, thế giới là sự kết hợp của các dao động tuần hoàn. Những thứ tạo nên dao động đó được gọi là dao động tử. Nói như Sidney Coleman, nhà vật lý lý thuyết được xem là "nhà vật lý của các nhà vật lý", thì "Một nhà vật lý lý thuyết trẻ xây dựng sự nghiệp của mình bằng việc làm việc với dao động tử điều hòa ở các cấp độ càng ngày càng trừu tượng hơn." ("The career of a young theoretical physicist consists of treating the harmonic oscillator in ever-increasing levels of abstraction.").
) 
return
}
;								MATH
; ==============================================================
{
:*T:mobius::Möbius
:*T:schr::Schrödinger
:*T:poincare::Poincaré
::\r::ℝ
:*T:r2::ℝ²
:*T:r3::ℝ³
:*T:so3::$SO(3)$
:*T:so2::$SO(2)$
:*T:l2r::
SendRaw,
(
$L^2(\Bbb{R})$
)
return
; ^CapsLock:: Send {$}{$}{Left}
::tex::TeX
:*T:latex::LaTeX
; :*T:xetex::XeTeX
; :*T:xelatex::XeLaTeX
; :*T:biber::Biber
}

;								OTHERS
; ==============================================================
:*:iincl::{#}Include D:\Dropbox\Config\AutoHotKey\Libraries\CheckScriptUpdate.ahk

; ==============================================================