$ErrorActionPreference = "Stop"

$mãDựÁn = (Read-Host "Nhập mã dự án (A, B, C, D, E, F, G)").ToUpper()
$tênKho = Read-Host "Nhập tên kho (có dấu)"
$tênKhoKhôngDấuKhôngCách = Read-Host "Nhập tên kho (không dấu, không cách)"
$tênMiềnCon = Read-Host "Nhập tên miền con (có dấu)"

$nơiLưu = "D:\Quả Cầu"
$nơiLưuKho = "$nơiLưu\Vaults\$tênKho"
$tênRepoWebsite = "${mãDựÁn}W-$tênKhoKhôngDấuKhôngCách"
$tênRepoKho = "${mãDựÁn}V-$tênKhoKhôngDấuKhôngCách"
$nơiLưuWebsite = "$nơiLưu\Code\Websites\$tênRepoWebsite"

$nơiLưuMẫu = "D:\Quả Cầu\Code\Scripts\Thiết lập chương trình\Mẫu dựng sẵn"
$nơiLưuKhoMẫu = "$nơiLưuMẫu\Kho Obsidian"
$nơiLưuWebsiteMẫu = "$nơiLưuMẫu\Website"

$đườngDẫnHiệnTại = $pwd
$tênMiền = ${tênMiềnCon}.quảcầu.cc

# winget install -e --id Obsidian.Obsidian
# winget install -e --id GitHub.cli
# winget install -e --id Git.Git
# winget install -e --id DenoLand.Deno

Tạo-Kho
Tạo-Website 
Set-Location $đườngDẫnHiệnTại

function Tạo-Kho {
  Copy-Item -Recurse $nơiLưuKhoMẫu $nơiLưuKho
  deno run -A "Thiết lập chương trình\Mẫu dựng sẵn\Chỉnh thiết lập.ts" --mãDựÁn $mãDựÁn --tênKho $tênKho --tênKhoKhôngDấu $tênKhoKhôngDấuKhôngCách --tênMiềnCon $tênMiềnCon
  
  Set-Location $nơiLưuKho
  $tênVàOrgRepoKho = "QuaCau-TheSphere/$tênRepoKho"

  git init
  git add -A
  git commit -m "Khởi tạo Kho"

  gh repo create --public $tênVàOrgRepoKho
  $url = gh repo view $tênVàOrgRepoKho --json url --jq '.url'
  git remote add origin $url 
  git push -u origin main
}

function Tạo-Website {
  Copy-Item -Recurse $nơiLưuWebsiteMẫu $nơiLưuWebsite
  Set-Location $nơiLưuWebsite

  Out-File CNAME -InputObject $tênMiền
  # todo: sửa data.yaml
  
  $tênVàOrgRepoWebsite = "QuaCau-TheSphere/$tênRepoWebsite"
  
  git init
  git add -A
  git commit -m "Khởi tạo website"

  gh repo create --public $tênVàOrgRepoWebsite
  $url = gh repo view $tênVàOrgRepoWebsite --json url --jq '.url'
  git remote add origin $url 
  git push -u origin main
  & "C:\Program Files\Firefox Developer Edition\firefox.exe" https://github.com/$tênVàOrgRepoWebsite/settings/pages
} 
