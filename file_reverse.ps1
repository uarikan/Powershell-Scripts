$Folder = Read-Host -Prompt 'Directory?'
$Extension = Read-Host -Prompt 'Extension?'
$Files = Get-ChildItem $Folder -Filter *.$Extension

ForEach ($File in $Files) {
    Get-Content $File.Fullname -totalcount 0 | Set-Content .\$($file.Basename).rev.$Extension
    $Flip = (Get-Content $File.Fullname | select -Skip 0)
    [array]::Reverse($Flip)
    $Flip | Add-Content "$Folder\$($file.basename).rev.$Extension"
}
pause