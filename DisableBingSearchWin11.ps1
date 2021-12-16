if (Test-Path 'HKCU:\Software\Policies\Microsoft\Windows'){
    New-Item -Path 'HKCU:\Software\Policies\Microsoft\Windows' -Name Explorer -Force
    New-ItemProperty -Path 'HKCU:\Software\Policies\Microsoft\Windows\Explorer' -Name DisableSearchBoxSuggestions -Value 1 -PropertyType DWORD -Force
}
else
{
    Write-Host 'Failed to run'$MyInvocation.MyCommand.Name
}