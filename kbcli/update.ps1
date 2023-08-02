import-module au

$version = "0.5.3"#$env:VERSION # v0.5.1
$domain = 'https://github.com'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"          = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
            "(?i)(^\s*checksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
        }
        ".\kbcli.nuspec"                = @{
            "\<version\>.+"      = "<version>$($Latest.Version)</version>"
            "\<releaseNotes\>.+" = "<releaseNotes>$($Latest.ReleaseNotes)</releaseNotes>"
        }
        ".\tools\VERIFICATION.txt" = @{
            "(?i)(\s+x64:).*"            = "`${1} $($Latest.URL64)"
            "(?i)(checksum64:).*"        = "`${1} $($Latest.Checksum64)"
            "(?i)(Get-RemoteChecksum).*" = "`${1} $($Latest.URL64)"
        }

    }
}

function global:au_GetLatest {

    $releaseNotesUrl = "$domain/apecloud/kbcli/releases/tag/v" + $version
    $url = "/apecloud/kbcli/releases/download/v$version/kbcli.exe"
    @{
        URL64        = $domain + $url
        Version      = $version
        ReleaseNotes = $releaseNotesUrl
    }
}

update -ChecksumFor 64