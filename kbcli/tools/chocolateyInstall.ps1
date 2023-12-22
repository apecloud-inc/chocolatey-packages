$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'kbcli'
  fileType       = 'exe'
  softwareName   = 'kbcli'

  checksum       = '39225fbac04f42b69bdf3659e1b0c4acd253dff78b27de5f6bc9bc9d5e79bb2b'
  checksumType   = 'sha256'
  url            = 'https://github.com/apecloud/kbcli/releases/download/v0.7.2/kbcli.exe'

  silentArgs     = ''
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
