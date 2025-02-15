$ErrorActionPreference = "Stop"

$mãDựÁn = (Read-Host "Nhập mã dự án (A, B, C, D, E, F, G)").ToUpper()
$tênVault = Read-Host "Nhập tên vault (có dấu)"
$tênVaultKhôngDấu = Read-Host "Nhập tên vault (không dấu)"
$subdomain = Read-Host "Nhập subdomain (có dấu)"

$nơiLưu = "D:\Quả Cầu"
$nơiLưuVault = "$nơiLưu\Vaults\$tênVault"
$tênRepoWebsite = "${mãDựÁn}W-$tênVaultKhôngDấu"
$tênRepoVault = "${mãDựÁn}V-$tênVaultKhôngDấu"
$nơiLưuWebsite = "$nơiLưu\Code\Websites\$tênRepoWebsite"

$nơiLưuMẫu = "D:\Quả Cầu\Code\Scripts\Thiết lập chương trình\Mẫu dựng sẵn"
$nơiLưuVaultMẫu = "$nơiLưuMẫu\Kho Obsidian"
$nơiLưuWebsiteMẫu = "$nơiLưuMẫu\Website"

$đườngDẫnHiệnTại = $pwd

Tạo-Vault 
Tạo-Website 
Set-Location $đườngDẫnHiệnTại

function Tạo-Vault {
  Copy-Item -Recurse $nơiLưuVaultMẫu $nơiLưuVault
  Set-Location $nơiLưuVault
  
  Chỉnh-ThiếtLập
  function Chỉnh-ThiếtLập{
    $đườngDẫnDataJsonEnveloppe = "$nơiLưuVault\.obsidian\plugins\obsidian-mkdocs-publisher\data.json"
    $json = Get-Content $đườngDẫnDataJsonEnveloppe -raw | ConvertFrom-Json -AsHashTable
    $json.update | ForEach-Object {if($_.name -eq 'github'){$_.repo=$tênRepoWebsite}}
    $json | ConvertTo-Json -depth 32 | Set-Content $đườngDẫnDataJsonEnveloppe
    
    # todo: sửa Ξ Thiết lập\Ξ Thiết lập.md
    
  }

  $tênVàOrgRepoVault = "QuaCau-TheSphere/$tênRepoVault"

  git init
  git add -A
  git commit -m "Khởi tạo vault"

  gh repo create --public $tênVàOrgRepoVault
  $url = gh repo view $tênVàOrgRepoVault --json url --jq '.url'
  git remote add origin $url 
  git push -u origin main
}


function Tạo-Website {
  Copy-Item -Recurse $nơiLưuWebsiteMẫu $nơiLưuWebsite
  Set-Location $nơiLưuWebsite

  Out-File CNAME -InputObject "${subdomain}.quảcầu.cc"
  $tênVàOrgRepoWebsite = "QuaCau-TheSphere/$tênRepoWebsite"

  # todo: sửa data.yaml

  git init
  git add -A
  git commit -m "Khởi tạo website"

  gh repo create --public $tênVàOrgRepoWebsite
  $url = gh repo view $tênVàOrgRepoWebsite --json url --jq '.url'
  git remote add origin $url 
  git push -u origin main
}