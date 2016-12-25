$url = "https://go.microsoft.com/fwlink/?LinkId=254279&clcid=0x409"
$start_time = Get-Date
$output = "windowsazurexplatcli.exe"

# download
Invoke-WebRequest -Uri $url -OutFile $output

Write-Output "Download Time: $((Get-Date).Subtract($start_time).Seconds) second(s)"

# install
& ./$output