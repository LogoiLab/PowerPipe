$ModuleHome = Join-Path -Path ($Env:PSModulePath.split(';')[1]) -ChildPath '\PowerPipe\'
New-Item -Path $ModuleHome -ItemType Directory -Force
New-Item -Path (Join-Path -Path $ModuleHome -ChildPath '\PipeStorage') -ItemType Directory -Force
