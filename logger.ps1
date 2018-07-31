Function LogWrite
{
    Param ([string]$log,
           [string]$logfile="$PSScriptRoot\log.log")
    Write-Output $log | Out-File $logfile -Append   
}
