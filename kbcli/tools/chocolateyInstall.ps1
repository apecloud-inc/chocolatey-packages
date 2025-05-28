$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'kbcli'
  fileType       = 'exe'
  softwareName   = 'kbcli'

  checksum       = '874b81ba7c8e06e904d89821b89021f4f28b9cf96990795f3f08a22c1097fc6d'
  checksumType   = 'sha256'
  url            = 'https://github.com/apecloud/kbcli/releases/download/v1.0.0/kbcli.exe'

  silentArgs     = ''
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
