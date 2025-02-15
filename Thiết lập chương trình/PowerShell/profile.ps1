# Set-Location C:\Users\ganuo\.Neo4jDesktop\relate-data\dbmss\dbms-4fa1bcef-0211-48e3-946d-ce44d4dcf6ba\bin\

# Function to relaunch as Admin:
function Relaunch-Admin { Start-Process -Verb RunAs (Get-Process -Id $PID).Path }

# Alias for the function:
Set-Alias psadmin Relaunch-Admin

[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()