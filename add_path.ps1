$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
$nodePath = "$env:LOCALAPPDATA\Programs\nodejs"
if ($userPath -notlike "*nodejs*") {
    [Environment]::SetEnvironmentVariable("Path", "$userPath;$nodePath", "User")
    Write-Host "Node path added to User Environment Path."
} else {
    Write-Host "Node path already present."
}
