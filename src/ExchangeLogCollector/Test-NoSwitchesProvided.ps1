Function Test-NoSwitchesProvided {
    if ($EWSLogs -or 
        $IISLogs -or 
        $DailyPerformanceLogs -or 
        $ManagedAvailability -or 
        $Experfwiz -or 
        $RPCLogs -or 
        $EASLogs -or 
        $ECPLogs -or 
        $AutoDLogs -or 
        $SearchLogs -or 
        $OWALogs -or 
        $ADDriverLogs -or
        $HighAvailabilityLogs -or
        $MapiLogs -or 
        $Script:AnyTransportSwitchesEnabled -or
        $DAGInformation -or
        $GetVdirs -or 
        $OrganizationConfig -or
        $Exmon -or 
        $ServerInfo -or
        $PopLogs -or 
        $ImapLogs -or 
        $OABLogs -or
        $PowerShellLogs -or
        $WindowsSecurityLogs -or
        $ExchangeServerInfo
    ) {
        return
    } else {
        Write-Host ""
        Write-ScriptHost -WriteString "WARNING: Doesn't look like any parameters were provided, are you sure you are running the correct command? This is ONLY going to collect the Application and System Logs." -ShowServer $false -ForegroundColor "Yellow"        
        Enter-YesNoLoopAction -Question "Would you like to continue?" -YesAction { Write-Host "Okay moving on..." } -NoAction { exit } 
    }
}
