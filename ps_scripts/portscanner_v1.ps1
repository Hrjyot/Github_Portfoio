$ipAddress = "localhost"
$startPort = 130
$endPort = 140

for ($port = $startPort; $port -le $endPort; $port++) {
    $result = Test-NetConnection -ComputerName $ipAddress -Port $port
    if ($result.TcpTestSucceeded) {
        Write-Output "Port $port is open on $ipAddress"
    }
}