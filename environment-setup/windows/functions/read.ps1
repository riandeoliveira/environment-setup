. windows\functions\show

Function Read-Json([string] $path) {
  $JsonContent = Get-Content -Path $path -Raw -Encoding UTF8
  $JsonData = ConvertFrom-Json -InputObject $JsonContent

  return $JsonData
}
