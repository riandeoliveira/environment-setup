. windows\functions\show

Function Set-DarkTheme() {
  Show-Title "Switching to Dark Theme"

  $Theme = @{
    Dark  = 0
    Light = 1
  }
  
  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"
  
  $RegistryNameList = @("AppsUseLightTheme", "SystemUsesLightTheme")
  
  Foreach ($RegistryName In $RegistryNameList) {
    Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value $Theme.Dark
  }
  
  Stop-Process -Name explorer
}

Function Set-HighPerformanceMode() {
  Show-Title "Switching to High Performance Mode"

  powercfg -SetActive SCHEME_MIN
}
