$date = Get-Date -format "yyyy-MM-dd"
$source      = "X:\your_daily_folder\$date"
$destination = New-Item -ItemType directory -Path X:\destination_folder\
$file_list = Get-Content "X:\log\missinglog.csv" 

foreach ($file in $file_list){
    foreach($dir in (Get-ChildItem $source -Recurse)){
        if($file -eq $dir.name){
            # copy only once, if the document name already exists, skip
            if(-not(test-path "$destination\$file")){
                Copy-Item $dir.fullname -Destination $destination -Verbose
            }
        }
    }
}

$items=Get-ChildItem $destination -filter *.your_extension | where { $_.Length -lt 2000KB}
Foreach($item in $items){
copy-item $item.fullname X:\your_destination_folder\ -force 
}
Remove-Item $destination -Recurse