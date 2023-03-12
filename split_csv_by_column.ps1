$path = Read-Host -Prompt 'PATH?   '
$file = Read-Host -Prompt 'CSV ?   '
$sort = Read-Host -Prompt 'SORT BY?'

Import-Csv $path\$file | Group-Object -Property "$sort" | 
    Foreach-Object {$path=$_.name+".csv" ; $_.group | 
    Export-Csv -NoTypeInformation -Path $path}