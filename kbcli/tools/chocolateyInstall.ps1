$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'kbcli'
  fileType       = 'exe'
  softwareName   = 'kbcli'

  checksum       = 'b2e7cbff0462c583898493a5048d4e6944cd2477a64c8436adf7f1c8c2890712'
  checksumType   = 'sha256'
  url            = 'https://github.com/apecloud/kbcli/releases/download/v0.6.2/kbcli.exe'

  silentArgs     = ''
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
