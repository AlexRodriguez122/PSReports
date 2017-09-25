function Invoke-Build {
<#
.SYNOPSIS
Genera los archivos Markdown de documentaci�n del m�dulo.

.EXAMPLE
Invoke-Build

.NOTES
Autor: Atorrest  
#>    
    [CmdletBinding()]
    [OutputType([PSCustomObject])]
    Param()
    
	Import-Module -Name 'PlatyPS'
	Import-Module -Name '..\PSReports' -Force
	$OutputFolder = Resolve-Path $PSScriptRoot
	New-MarkdownHelp -Module 'PSReports' -OutputFolder $OutputFolder -Force
}

Invoke-Build

