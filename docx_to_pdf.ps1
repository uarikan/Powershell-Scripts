param (
    [string]$folder = 'C:\Your_Directory'
)
Add-type -AssemblyName Microsoft.Office.Interop.Word
$word_app = New-Object -ComObject Word.Application
$word_app.visible = $false

Get-ChildItem -Path "$folder" -Filter *.txt | ForEach-Object {
    remove-item $_.FullName
}

Get-ChildItem -Path "$folder" -Filter *.txt -recurse | ForEach-Object {
    $document = $word_app.Documents.Open($_.FullName)
	$filename = $_.BaseName -replace ' ',''
    $pdf_filename = "$($folder)\$($filename).pdf"
    $document.SaveAs([ref] $pdf_filename, [ref] 17)
    $document.Close()
}

$word_app.Quit()