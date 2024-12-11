. windows\functions\read
. windows\functions\show

Function Install-JetBrainsMonoFonts() {
  Show-Title "Installing Jet Brains Mono Text Fonts"

  $User = $env:USERNAME

  $SourceFontsPath = "C:\Users\$($User)\OneDrive\JetBrainsMonoFonts"

  $Fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)

  Get-ChildItem $SourceFontsPath | ForEach-Object { $Fonts.CopyHere($_.fullname) }
}

Function Install-RequiredApplications() {
  $Applications = Read-Json "windows\data\required-applications.json"

  Foreach ($App In $Applications) {
    Show-Title "Installing $($App.Name)"

    winget install -e --id $App.Id
  }
}
