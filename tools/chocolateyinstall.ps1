$ErrorActionPreference = 'Stop'; 

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://tetr.io/about/desktop/builds/TETR.IO%20Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64

  softwareName  = 'TETR.IO*' 

  checksum      = '21C48774B03751E5401F8F9FB391D03BB70F208E09024977266F12FC73DAE1E7'
  checksumType  = 'sha256' 
  silentArgs   = '/S' # NSIS
}

Install-ChocolateyPackage @packageArgs 