﻿#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function New-SysmonImageLoadFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [ValidateSet('UtcTime', 'ProcessGuid', 'ProcessId', 'Image', 
                     'ImageLoaded', 'Hashes', 'Signed', 
                     'Signature')]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
     )

    Begin
    {
    }
    Process
    {
        $FieldString = $MyInvocation.MyCommand.Module.PrivateData[$EventField]

        switch($psCmdlet.ParameterSetName)
        {
            'Path'
            {
                New-RuleFilter -Path $Path -EventType ImageLoad -Condition $Condition -EventField $FieldString -Value $Value
            }

            'LiteralPath' 
            {
                New-RuleFilter -LiteralPath $LiteralPath -EventType ImageLoad -Condition $Condition -EventField $FieldString -Value $Value
            }
        }

    }
    End
    {
    }
}


#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function New-SysmonDriverLoadFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [ValidateSet('UtcTime', 'ImageLoaded', 
                     'Hashes', 'Signed', 'Signature')]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
     )

    Begin
    {
    }
    Process
    {
        $FieldString = $MyInvocation.MyCommand.Module.PrivateData[$EventField]

        switch($psCmdlet.ParameterSetName)
        {
            'Path'
            {
                New-RuleFilter -Path $Path -EventType DriverLoad -Condition $Condition -EventField $FieldString -Value $Value
            }

            'LiteralPath' 
            {
                New-RuleFilter -LiteralPath $LiteralPath -EventType DriverLoad -Condition $Condition -EventField $FieldString -Value $Value
            }
        }

    }
    End
    {
    }
}


#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function New-SysmonNetworkConnectFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [ValidateSet('UtcTime', 'ProcessGuid', 'ProcessId', 'Image', 
                     'User', 'Protocol', 'Initiated', 'SourceIsIpv6', 
                     'SourceIp', 'SourceHostname', 'SourcePort', 
                     'SourcePortName', 'DestinationIsIpv6', 
                     'DestinationIp', 'DestinationHostname', 
                     'DestinationPort', 'DestinationPortName')]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
     )

    Begin
    {
    }
    Process
    {
        $FieldString = $MyInvocation.MyCommand.Module.PrivateData[$EventField]

        switch($psCmdlet.ParameterSetName)
        {
            'Path'
            {
                New-RuleFilter -Path $Path -EventType NetworkConnect -Condition $Condition -EventField $FieldString -Value $Value
            }

            'LiteralPath' 
            {
                New-RuleFilter -LiteralPath $LiteralPath -EventType NetworkConnect -Condition $Condition -EventField $FieldString -Value $Value
            }
        }

    }
    End
    {
    }
}


#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function New-SysmonFileCreateFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [ValidateSet('UtcTime', 'ProcessGuid', 'ProcessId', 'Image', 
                     'TargetFilename', 'CreationUtcTime', 
                     'PreviousCreationUtcTime')]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
     )

    Begin
    {
    }
    Process
    {
        $FieldString = $MyInvocation.MyCommand.Module.PrivateData[$EventField]

        switch($psCmdlet.ParameterSetName)
        {
            'Path'
            {
                New-RuleFilter -Path $Path -EventType FileCreateTime -Condition $Condition -EventField $FieldString -Value $Value
            }

            'LiteralPath' 
            {
                New-RuleFilter -LiteralPath $LiteralPath -EventType FileCreateTime -Condition $Condition -EventField $FieldString -Value $Value
            }
        }

    }
    End
    {
    }
}


#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function New-SysmonProcessCreateFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [ValidateSet('UtcTime', 'ProcessGuid', 'ProcessId', 'Image', 
                     'CommandLine', 'User', 'LogonGuid', 'LogonId',
                     'TerminalSessionId', 'IntegrityLevel',
                     'Hashes', 'ParentProcessGuid', 'ParentProcessId',
                     'ParentImage', 'ParentCommandLine')]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
     )

    Begin
    {
    }
    Process
    {
        $FieldString = $MyInvocation.MyCommand.Module.PrivateData[$EventField]

        switch($psCmdlet.ParameterSetName)
        {
            'Path'
            {
                New-RuleFilter -Path $Path -EventType ProcessCreate -Condition $Condition -EventField $FieldString -Value $Value
            }

            'LiteralPath' 
            {
                New-RuleFilter -LiteralPath $LiteralPath -EventType ProcessCreate -Condition $Condition -EventField $FieldString -Value $Value
            }
        }

    }
    End
    {
    }
}


#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function New-SysmonProcessTerminateFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [ValidateSet('UtcTime', 'ProcessGuid', 'ProcessId')]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
     )

    Begin
    {
    }
    Process
    {
       $FieldString = $MyInvocation.MyCommand.Module.PrivateData[$EventField]

        switch($psCmdlet.ParameterSetName)
        {
            'Path'
            {
                New-RuleFilter -Path $Path -EventType ProcessTerminate -Condition $Condition -EventField $FieldString -Value $Value
            }

            'LiteralPath' 
            {
                New-RuleFilter -LiteralPath $LiteralPath -EventType ProcessTerminate -Condition $Condition -EventField $FieldString -Value $Value
            }
        }

    }
    End
    {
    }
}

#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function New-SysmonCreateRemoteThread
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [ValidateSet('SourceImage', 'TargetImage')]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
     )

    Begin
    {
    }
    Process
    {
       $FieldString = $MyInvocation.MyCommand.Module.PrivateData[$EventField]

        switch($psCmdlet.ParameterSetName)
        {
            'Path'
            {
                New-RuleFilter -Path $Path -EventType CreateRemoteThread -Condition $Condition -EventField $FieldString -Value $Value
            }

            'LiteralPath' 
            {
                New-RuleFilter -LiteralPath $LiteralPath -EventType CreateRemoteThread -Condition $Condition -EventField $FieldString -Value $Value
            }
        }

    }
    End
    {
    }
}


#  .ExternalHelp Posh-SysMon.psm1-Help.xml
function Remove-SysmonRuleFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Event type to update.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]
        [ValidateSet('NetworkConnect', 'ProcessCreate', 'FileCreateTime', 
                     'ProcessTerminate', 'ImageLoad', 'DriverLoad', 
                     'CreateRemoteThread')]
        [string[]]
        $EventType,

        # Condition for filtering against and event field.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=2)]
        [ValidateSet('Is', 'IsNot', 'Contains', 'Excludes', 'Image',
                     'BeginWith', 'EndWith', 'LessThan', 'MoreThan')]
        [string]
        $Condition,

        # Event field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=3)]
        [string]
        $EventField,

        # Value of Event Field to filter on.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=4)]
        [string[]]
        $Value
    )

    Begin{}
    Process
    {
        $EvtType = $null
        # Check if the file is a valid XML file and if not raise and error. 
        try
        {
            switch($psCmdlet.ParameterSetName)
            {
                'Path'
                {
                    [xml]$Config = Get-Content -Path $Path
                    $FileLocation = (Resolve-Path -Path $Path).Path
                }

                'LiteralPath' 
                {
                    [xml]$Config = Get-Content -LiteralPath $LiteralPath
                    $FileLocation = (Resolve-Path -LiteralPath $LiteralPath).Path
                }
            }
        }
        catch [System.Management.Automation.PSInvalidCastException]
        {
            Write-Error -Message 'Specified file does not appear to be a XML file.'
            return
        }
        
        # Validate the XML file is a valid Sysmon file.
        if ($Config.SelectSingleNode('//Sysmon') -eq $null)
        {
            Write-Error -Message 'XML file is not a valid Sysmon config file.'
            return
        }

        $Rules = $Config.SelectSingleNode('//Sysmon/EventFiltering')

        # Select the proper condition string.
        switch ($Condition)
        {
            'Is' {$ConditionString = 'is'}
            'IsNot' {$ConditionString = 'is not'}
            'Contains' {$ConditionString = 'contains'}
            'Excludes' {$ConditionString = 'excludes'}
            'Image' {$ConditionString = 'image'}
            'BeginWith' {$ConditionString = 'begin with'}
            'EndWith' {$ConditionString = 'end with'}
            'LessThan' {$ConditionString = 'less than'}
            'MoreThan' {$ConditionString = 'more than'}
            Default {$ConditionString = 'is'}
        }

        # Check if the event type exists if not create it.
        if ($Rules -eq '')
        {
            Write-Error -Message 'Rule element does not exist. This appears to not be a valid config file'
            return
        }
        else
        {
            $EvtType = $MyInvocation.MyCommand.Module.PrivateData[$Type]

            $EventRule = $Rules.SelectSingleNode("//EventFiltering/$($EvtType)")
        }

        if($EventRule -eq $null)
        {
            Write-Warning -Message "No rule for $($EvtType) was found."
            return
        }
        $Filters = $EventRule.SelectNodes('*')
        if ($Filters.count -gt 0)
        {
            foreach($val in $Value)
            {
                foreach($Filter in $Filters)
                {
                    if ($Filter.Name -eq $EventField)
                    {
                        if (($Filter.condition -eq $null) -and ($Condition -eq 'is') -and ($Filter.'#text' -eq $val))
                        {
                            [void]$Filter.ParentNode.RemoveChild($Filter)
                            Write-Verbose -Message "Filter for field $($EventField) with condition $($Condition) and value of $($val) removed."
                        }
                        elseif (($Filter.condition -eq $Condition) -and ($Filter.'#text' -eq $val))
                        {
                            [void]$Filter.ParentNode.RemoveChild($Filter)
                            Write-Verbose -Message "Filter for field $($EventField) with condition $($Condition) and value of $($val) removed."
                        }
                    }
                }
            }
            Get-RuleWithFilter($EventRule)
        }
        else
        {
            Write-Warning -Message 'This event type has no filters configured.'
            return
        }

        $config.Save($FileLocation)
    }
    End{}
}

<#
.SYNOPSIS
    Get the configured filters for a specified Event Type Rule in a Sysmon configuration file.
.DESCRIPTION
    Get the configured filters for a specified Event Type Rule in a Sysmon configuration file.
.EXAMPLE
    C:\PS>  Get-SysmonRuleFilter -Path C:\sysmon.xml -EventType ProcessCreate 
    Get the filter under the ProcessCreate Rule.
#>
function Get-SysmonRuleFilter
{
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    Param
    (
        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        $Path,

        # Path to XML config file.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='LiteralPath',
                   Position=0)]
        [ValidateScript({Test-Path -Path $_})]
        [Alias('PSPath')]
        $LiteralPath,

        # Event type rule to get filter for.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ParameterSetName='Path',
                   Position=1)]
        [ValidateSet('NetworkConnect', 'ProcessCreate', 'FileCreateTime', 
                     'ProcessTerminate', 'ImageLoad', 'DriverLoad', 
                     'CreateRemoteThread')]
        [string[]]
        $EventType
    )

    Begin{}
    Process
    {
        $EvtType = $null
        # Check if the file is a valid XML file and if not raise and error. 
        try
        {
            switch($psCmdlet.ParameterSetName)
            {
                'Path'
                {
                    [xml]$Config = Get-Content -Path $Path
                    $FileLocation = (Resolve-Path -Path $Path).Path
                }

                'LiteralPath' 
                {
                    [xml]$Config = Get-Content -LiteralPath $LiteralPath
                    $FileLocation = (Resolve-Path -LiteralPath $LiteralPath).Path
                }
            }
        }
        catch [System.Management.Automation.PSInvalidCastException]
        {
            Write-Error -Message 'Specified file does not appear to be a XML file.'
            return
        }
        
        # Validate the XML file is a valid Sysmon file.
        if ($Config.SelectSingleNode('//Sysmon') -eq $null)
        {
            Write-Error -Message 'XML file is not a valid Sysmon config file.'
            return
        }

        $Rules = $Config.SelectSingleNode('//Sysmon/EventFiltering')

        if ($Rules -eq '')
        {
            Write-Error -Message 'Rule element does not exist. This appears to not be a valid config file'
            return
        }
        else
        {
            $EvtType = $MyInvocation.MyCommand.Module.PrivateData[$EventType]

            $EventRule = $Rules.SelectSingleNode("//EventFiltering/$($EvtType)")
        }

        if($EventRule -eq $null)
        {
            Write-Warning -Message "No rule for $($EvtType) was found."
            return
        }
        $Filters = $EventRule.SelectNodes('*')
        if ($Filters.count -gt 0)
        {
            foreach($Filter in $Filters)
            {
                
                $FilterObjProps = @{}
                $FilterObjProps['EventField'] = $Filter.Name
                $FilterObjProps['Condition'] = &{if($Filter.condition -eq $null){'is'}else{$Filter.condition}}
                $FilterObjProps['Value'] =  $Filter.'#text'
                $FilterObj = [pscustomobject]$FilterObjProps
                $FilterObj.pstypenames.insert(0,'Sysmon.Rule.Filter')
                $FilterObj
           
            }
            
        }
        else
        {
            Write-Warning -Message 'This event type has no filters configured.'
            return
        }
    }
    End{}
}

<#
.Synopsis
   Searches for specified SysMon Events and retunrs the Event Data as a custom object.
.DESCRIPTION
   Searches for specified SysMon Events and retunrs the Event Data as a custom object.
.EXAMPLE
   Get-SysMonEventData -EventId 1 -MaxEvents 10 -EndTime (Get-Date) -StartTime (Get-Date).AddDays(-1)
   
   All process creation events in the last 24hr
.EXAMPLE
   Get-SysMonEventData -EventId 3 -MaxEvents 20 -Path .\export.evtx
   
   last 20 network connection events from a exported SysMon log.
#>
function Get-SysmonEventData
{
    [CmdletBinding(DefaultParameterSetName='ID')]
    Param
    (
        # Sysmon Event ID of records to show
        [Parameter(Mandatory=$true,
                   ParameterSetName='ID',
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [ValidateSet(1,2,3,5,6,7,8)]
        [Int32[]]
        $EventId,

        # EventType that a Rule can be written against.
        [Parameter(Mandatory=$false,
                   ParameterSetName='Type',
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string[]]
        [ValidateSet('NetworkConnect', 'ProcessCreate', 'FileCreateTime', 
                     'ProcessTerminate', 'ImageLoad', 'DriverLoad', 
                     'CreateRemoteThread')]
        $EventType,
        
        # Specifies the maximum number of events that Get-WinEvent returns. Enter an integer. The default is to return all the events in the logs or files.
        [Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]
        [int]
        $MaxEvents,
        
        # Specifies a path to one or more exported SysMon events in evtx format.
        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   HelpMessage='Path to one or more locations.')]
        [Alias('PSPath')]
        [ValidateNotNullOrEmpty()]
        [string[]]
        $Path,
        
        # Start Date to get all event going forward.
        [Parameter(Mandatory=$false)]
        [datetime]
        $StartTime,
        
        # End data for searching events.
        [Parameter(Mandatory=$false)]
        [datetime]
        $EndTime
    )

    Begin 
    {
        $EventTypeMap = @{
            ProcessCreate = 1
            FileCreateTime = 2
            NetworkConnect = 3
            ProcessTerminate = 5
            DriverLoad = 6
            ImageLoad = 7
            CreateRemoteThread = 8
        }

        $EventIdtoType = @{
            '1' = 'ProcessCreate'
            '2' = 'FileCreateTime'
            '3' = 'NetworkConnect'
            '5' = 'ProcessTerminate'
            '6' = 'DriverLoad'
            '7' = 'ImageLoad' 
            '8' = 'CreateRemoteThread'
        }
    }
    Process
    {
        # Hash for filtering
        $HashFilter = @{LogName='Microsoft-Windows-Sysmon/Operational'}
       
        # Hash for command paramteters
        $ParamHash = @{}
        
        if ($MaxEvents -gt 0)
        {
            $ParamHash.Add('MaxEvents', $MaxEvents)
        } 
        
        if ($Path -gt 0)
        {
            $ParamHash.Add('Path', $Path)
        }
        
        switch ($PSCmdlet.ParameterSetName) {
            'ID' { $HashFilter.Add('Id', $EventId) }
            'Type' {  
                $EventIds = @()
                foreach ($etype in $EventType)
                {
                    $EventIds += $EventTypeMap[$etype]
                }
                $HashFilter.Add('Id', $EventIds)
            }
        }
        
        if ($StartTime)
        {
            $HashFilter.Add('StartTime', $StartTime)
        }
        
        if ($EndTime)
        {
            $HashFilter.Add('EndTime', $EndTime)
        }
        
        $ParamHash.Add('FilterHashTable',$HashFilter)
        Get-WinEvent @ParamHash | foreach {
            [xml]$evtxml = $_.toxml() 
            $ProcInfo = [ordered]@{}
            $ProcInfo['EventId'] = $evtxml.Event.System.EventID
            $ProcInfo['EventType'] = $EventIdtoType[$evtxml.Event.System.EventID]
            $ProcInfo['Computer'] = $evtxml.Event.System.Computer
            $evtxml.Event.EventData.Data | foreach {
                $ProcInfo[$_.name] = $_.'#text'
            }
            New-Object psobject -Property $ProcInfo
        }
    }
    End {}
}