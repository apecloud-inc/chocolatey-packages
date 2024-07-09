$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'kbcli'
  fileType       = 'exe'
  softwareName   = 'kbcli'

  checksum       = 'c4feb363fdd83bd04cd43b62729d48a61a92042cbc7c3bddb70badfe4adad694'
  checksumType   = 'sha256'
  url            = 'https://github.com/apecloud/kbcli/releases/download/v0.9.0/kbcli.exe'

  silentArgs     = ''
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
