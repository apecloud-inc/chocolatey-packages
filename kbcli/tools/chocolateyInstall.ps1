$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'kbcli'
  fileType       = 'exe'
  softwareName   = 'kbcli'

  checksum       = 'ee7d4e8234a001eb859e1e9a3bc6e0cbd03766f837e7a6789af98887eaec39a6'
  checksumType   = 'sha256'
  url            = 'https://github.com/apecloud/kbcli/releases/download/v1.0.2/kbcli.exe'

  silentArgs     = ''
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
