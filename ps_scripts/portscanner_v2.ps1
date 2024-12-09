$ipAddress = "localhost"
$startPort = 1
$endPort = 999

for ($port = $startPort; $port -le $endPort; $port++) {
    $tcpConnection = New-Object System.Net.Sockets.TcpClient
    try {
        # Attempt to connect to the port
        $tcpConnection.Connect($ipAddress, $port)
        
        # If connection is successful, port is open
        if ($tcpConnection.Connected) {
            Write-Output "Port $port is open on $ipAddress"
        }
    } catch {
        # If the connection fails, port is closed
        Write-Output "Port $port is closed on $ipAddress"
    } finally {
        # Close the TCP connection
        $tcpConnection.Close()
    }
}
