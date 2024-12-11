Function Show-FileExtensions() {
  Show-Title "Showing File Extensions"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  $RegistryName = "HideFileExt"

  Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value 0
}

Function Show-Footer() {
  Write-Host ""
  Write-Host "========= Everything's fine! Please, restart your PC ============="
  Write-Host ""
}

Function Show-Header() {
  Write-Host "=================================================================="
  Write-Host "                     WINDOWS ENVIRONMENT SETUP!                   "
  Write-Host "=================================================================="
  Write-Host ""
}

Function Show-TaskbarClockSeconds() {
  Show-Title "Showing Seconds on Taskbar Clock"

  $RegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
  $RegistryName = "ShowSecondsInSystemClock"
  $RegistryValue = 1

  Set-ItemProperty -Path $RegistryPath -Name $RegistryName -Value $RegistryValue
}

Function Show-Title([string] $title) {
  Write-Host ""
  Write-Host "==================== $title ..."
  Write-Host ""
}
