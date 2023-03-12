$defaultprinter = Get-WmiObject -Query "SELECT * FROM win32_Printer WHERE default=$true"
Dir "C:\Your_Directory\your.pdf" | Foreach-Object { Start-Process -FilePath $_.FullName -Verb Print }
$defaultprinter.SetDefaultPrinter()
