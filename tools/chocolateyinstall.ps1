
$ErrorActionPreference = 'Stop';
$url        = 'https://github.com/MitMaro/git-interactive-rebase-tool/releases/download/1.1.0/git-interactive-rebase-tool-1.1.0-x86_64-pc-windows-msvc.zip'
$installDir = Join-Path $(Get-ToolsLocation) $env:ChocolateyPackageName
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $installDir
  url           = $url

  softwareName  = 'git-interactive-rebase-tool'

  checksum      = 'EEE608B7551615C2171050E3A87411CD0EF980D1304ED46BCE01B2D6C3659AF3'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
git config --global core.editor "'$installDir\interactive-rebase-tool'"










    








