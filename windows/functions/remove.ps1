. windows\functions\read
. windows\functions\show

Function Remove-TaskbarPinnedApps() {
  Show-Title "Removing Taskbar Pinned Apps"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband"

  Remove-Item -Path "$env:APPDATA\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*" -Force -Recurse

  Remove-ItemProperty -Path $RegistryPath -Name "*" -Force

  Stop-Process -f -ProcessName explorer
}

Function Remove-UnusedApplications() {
  $Applications = Read-Json "windows\data\unused-applications.json"

  Foreach ($App In $Applications) {
    Show-Title "Uninstalling $($App.Name)"

    winget remove -e --id $App.Id
  }
}
