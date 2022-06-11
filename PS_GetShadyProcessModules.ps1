$regpath = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs"
$knowndlls = Get-ItemProperty -Path $regpath | Get-Member -MemberType NoteProperty -ea SilentlyContinue | Select -ExpandProperty Name -ea SilentlyContinue | foreach { if ($_ -notlike "PS*") { Get-ItemPropertyValue -ea SilentlyContinue -Path $regpath -Name $_  } }


foreach ($proc in Get-Process) {
    
    foreach ($module in ($proc | Select -Expand Modules -ea SilentlyContinue)) {
        if ($module.ModuleName -NotIn $knowndlls -And $module.FileName.ToLower() -notlike "c:\windows\*" -And $module.FileName.ToLower() -notlike "c:\program files\*" ) {
            Write-Host "`t" $module.ModuleName $module.FileName
        }
        
    }
}