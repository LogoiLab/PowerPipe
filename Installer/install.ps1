#requires -Version 2
$ModuleHome = Join-Path -Path ($Env:PSModulePath.split(';')[0]) -ChildPath '\PowerPipe'
New-Item -Path $ModuleHome -ItemType Directory -Force
New-Item -Path (Join-Path -Path $ModuleHome -ChildPath '\PipeStorage') -ItemType Directory -Force
New-Item -Path (Join-Path -Path $ModuleHome -ChildPath '\Source') -ItemType Directory -Force
$ModuleSource = 'https://raw.githubusercontent.com/LogoiLab/PowerPipe/master/PowerPipe.psm1'
$ModuleManifest = 'https://raw.githubusercontent.com/LogoiLab/PowerPipe/master/PowerPipe.psd1'
(New-Object System.Net.WebClient).DownloadFile($ModuleSource,(Join-Path -Path $ModuleHome -ChildPath '\Source\PowerPipe.psm1'))
(New-Object System.Net.WebClient).DownloadFile($ModuleManifest,(Join-Path -Path $ModuleHome -ChildPath '\Source\PowerPipe.psd1'))