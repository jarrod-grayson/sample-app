$url = 'https://pulse-7.qtestnet.com/webhook/cebd2a07-ec59-481d-a9c2-49a4f6d4ccd2'

$content = Get-Content "C:\Tosca_Projects\ToscaCIResults\Results.xml" -Raw
$bytes = [System.Text.Encoding]::ASCII.GetBytes($content)
$payload = [System.Convert]::ToBase64String($bytes)

$body = @{
 'projectId' = '121052'
 'testcycle' = '2960955'
 'result' = $payload
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Body $body -Method 'Post' -Uri $url
