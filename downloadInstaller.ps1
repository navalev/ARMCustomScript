$url = "https://zertotestdownload.blob.core.windows.net/test/windowsazurexplatcli.exe"
$start_time = Get-Date
$output = "$PSScriptRoot\windowsazurexplatcli.exe"

# download
Invoke-WebRequest -Uri $url -OutFile $output

# install
& ./$output
