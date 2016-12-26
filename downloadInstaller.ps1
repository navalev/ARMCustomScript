$url = "https://zertotestdownload.blob.core.windows.net/test/windowsazurexplatcli.exe"
$start_time = Get-Date
$folder = "c:\temp"
$output = "$folder\windowsazurexplatcli.exe"

#create folder
[system.io.directory]::CreateDirectory($folder)

# download
Invoke-WebRequest -Uri $url -OutFile $output

# install
& $output
