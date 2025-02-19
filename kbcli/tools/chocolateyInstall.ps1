$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'kbcli'
  fileType       = 'exe'
  softwareName   = 'kbcli'

  checksum       = '52f2d9519bb65852a18b5cbe9a04e6d7bbd40036240e504cade5b217de49b86d'
  checksumType   = 'sha256'
  url            = 'https://github.com/apecloud/kbcli/releases/download/v0.9.3/kbcli.exe'

  silentArgs     = ''
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
