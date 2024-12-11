. windows\functions\show

Function Enable-WslInstallation() {
  Show-Title "Preparing for WSL Installation"

  dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
  dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
}
