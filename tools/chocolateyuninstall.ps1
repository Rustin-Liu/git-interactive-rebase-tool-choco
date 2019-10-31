

$ErrorActionPreference = 'Stop';

$installDir = Join-Path $(Get-ToolsLocation) $env:ChocolateyPackageName
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'git-interactive-rebase-tool'
  ZipFileName   = 'git-interactive-rebase-tool-1.1.0-x86_64-pc-windows-msvc.zip'
}


Uninstall-ChocolateyZipPackage @packageArgs
Remove-Item -Path $installDir
git config --global --unset core.editor 


