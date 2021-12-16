if (Test-Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'){
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarDa' -Value 0 -Force
}
else
{
    Write-Host 'Failed to run'$MyInvocation.MyCommand.Name
}