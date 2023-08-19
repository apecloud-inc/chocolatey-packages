$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'kbcli'
  fileType       = 'exe'
  softwareName   = 'kbcli'

  checksum       = '57fa877278d3df4db595acf164cba1a0dc4fb950a64d57dd2a93f1e61b6e5ce5'
  checksumType   = 'sha256'
  url            = 'https://github.com/apecloud/kbcli/releases/download/v0.6.0/kbcli.exe'

  silentArgs     = ''
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
