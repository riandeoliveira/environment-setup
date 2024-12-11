. windows\functions\show

Function Clear-StartMenuLayout() {
  Show-Title "Clearing Start Menu Layout"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  
  Set-ItemProperty -Path $RegistryPath -Name Start_Layout -Value 1
}
