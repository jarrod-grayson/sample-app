$url = 'https://pulse-7.qtestnet.com/webhook/71df3dfd-2ef5-4c29-8471-e441f806ac1a'

$content = Get-Content "C:\Tosca_Projects\ToscaCIResults\Results.xml" -Raw
$bytes = [System.Text.Encoding]::ASCII.GetBytes($content)
$payload = [System.Convert]::ToBase64String($bytes)

$body = @{
 'projectId' = '121052'
 'testcycle' = '2960956'
 'result' = $payload
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Body $body -Method 'Post' -Uri $url
