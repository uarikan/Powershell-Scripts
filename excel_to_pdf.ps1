#UPDATE DATA IN EXCEL FILES
#THEN CREATE PDF FILE
[string]$path = 'C:\Your_Directory'  
[string]$savepath = 'C:\Your_Directory'

$xlFixedFormat = "Microsoft.Office.Interop.Excel.xlFixedFormatType" -as [type] 
$excelFiles = Get-ChildItem -Path $path -include *.xls, *.xlsx -recurse 

# Create the Excel application object
$objExcel = New-Object -ComObject excel.application 
$objExcel.visible = $false   #Do not open individual windows

foreach($wb in $excelFiles) 
{ 
# Path to new PDF
 $filepath = Join-Path -Path $savepath -ChildPath ($wb.BaseName + ".pdf") 
 # Open workbook - 3 refreshes links
 $workbook = $objExcel.workbooks.open($wb.fullname, 3)
 $workbook.RefreshAll()
 
 # Give delay to save
 Start-Sleep -s 0
 
 # Save Workbook
 $workbook.Saved = $true 
"saving $filepath" 
 #Export as PDF
 $workbook.ExportAsFixedFormat($xlFixedFormat::xlTypePDF, $filepath) 
 $objExcel.Workbooks.close() 
} 
$objExcel.Quit()