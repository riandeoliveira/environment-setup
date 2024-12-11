. windows\functions\show

Function Hide-DesktopIcons() {
  Show-Title "Hiding Desktop Icons"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  $RegistryName = "HideIcons"
  $RegistryValue = 1

  Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value $RegistryValue

  Stop-Process -f -ProcessName explorer
}

Function Hide-Taskbar() {
  Show-Title "Hiding Taskbar"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3"
  
  $RegistryValue = (Get-ItemProperty -Path $RegistryPath).Settings
  
  $RegistryValue[8] = 0x7b
  
  Set-ItemProperty -Path $RegistryPath -Name Settings -Value $RegistryValue
  
  Stop-Process -f -ProcessName explorer
}

Function Hide-TaskbarChat() {
  Show-Title "Hiding Taskbar Chat"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  $RegistryName = "TaskbarMn"
  $RegistryValue = 0

  Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value $RegistryValue
}

Function Hide-TaskbarSearchbox() {
  Show-Title "Hiding Taskbar Searchbox"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search"
  $RegistryName = "SearchboxTaskbarMode"
  $RegistryValue = 0

  Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value $RegistryValue
}

Function Hide-TaskbarTaskViewButton() {
  Show-Title "Hiding Taskbar Task View Button"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  $RegistryName = "ShowTaskViewButton"
  $RegistryValue = 0

  Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value $RegistryValue
}

Function Hide-TaskbarWidgets() {
  Show-Title "Hiding Taskbar Widgets"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  $RegistryName = "TaskbarDa"
  $RegistryValue = 0

  Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value $RegistryValue
}
