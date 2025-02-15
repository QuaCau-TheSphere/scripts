# On UAC-enabled systems, to make sure a script is running with full admin privileges, add this code at the beginning of your script:

param([switch]$Elevated)

function Test-Admin {
	$currentUser
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
	$currentUser
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
       # tried to elevate, did not work, aborting
	   'elevated'
    } else {
        Start-Process pwsh -Verb RunAs -ArgumentList ('-noprofile -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
		'Start-Process pwsh -Verb RunAs -ArgumentList (''-noprofile -file "{0}" -elevated'' -f ($myinvocation.MyCommand.Definition))'
		# & "C:\Program Files\ShareX\ShareX.exe"
		# & "C:\Program Files (x86)\CopyQ\copyq.exe"
    }
}

'Running with full privileges'

# if ((get-date).year -eq "2010") {
	# set-date "Sep 21 2020"}
# Do {
	# net start w32time
	# W32tm /resync /force
	# }
# Until ((get-date) -gt (get-date "Sep 22 2020"))

# Start-Process firefox -WindowStyle (3)
'Bật Firefox'
# Start-Process code -WindowStyle (3)
# 'Bật code'
# Start-Process Obsidian -WindowStyle (3)
# 'Bật Obsidian'
# & "D:\Dropbox\Config\FreeFileSync\Global Obsidian settings.ffs_real"
# & 'C:\Program Files\SumatraPDF\SumatraPDF.exe'
# & 'D:\Dropbox\Config\AutoHotKey\Separated\Closing by minimizing.ahk
# Start-Process wt cypher-shell.bat
& "C:\Program Files\ShareX\ShareX.exe"
'Bật ShareX'
& "C:\Program Files (x86)\CopyQ\copyq.exe"
'Bật CopyQ'

# ====================
# Neo4j 
# ====================
# Invoke-WebRequest "https://xn--qucu-hr5aza.cc/phan-tich-mot-mang-luoi-100-niem-tin/" 
# & 'C:\Program Files\Neo4j Desktop\Neo4j Desktop.exe'
# & C:\Users\ganuo\.Neo4jDesktop\relate-data\dbmss\dbms-f41a1e85-c6f0-45d9-8ba9-1946e4ed1625\bin\neo4j-admin.ps1 push-to-cloud --bolt-uri neo4j+s://b95e1176.databases.neo4j.io --database neo4j --username neo4j --password jgqHo9s6c2fCRv_mT2l1S693dSQ0GKYYC0LZ5Rn7XI8 --overwrite
# cmd /c '"C:\Program Files (x86)\WinSCP\WinSCP.com" /log="D:\Dropbox\Config\WinSCP.log" /ini=nul /command "open ftp://xnqucuhr5aza:LAKNvjCj%2BCvM@107.161.23.124/" "lcd D:\GitHub\neovis2" "cd ""/public_html/files/Một hệ thống niềm tin""" "put ""A belief network.html""" "put config.js" "put style.css" "exit"'

'Trước khi thoát'
exit 