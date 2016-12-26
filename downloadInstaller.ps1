$url = "https://zertotestdownload.blob.core.windows.net/test/windowsazurexplatcli.exe"
$start_time = Get-Date
$output = "windowsazurexplatcli.exe"

# download
Invoke-WebRequest -Uri $url -OutFile $output

Write-Output "Download Time: $((Get-Date).Subtract($start_time).Seconds) second(s)"

# install
& ./$output
