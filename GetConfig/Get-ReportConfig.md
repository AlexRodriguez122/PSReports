---
external help file: PSReports-help.xml
Module Name: PSReports
online version: 
schema: 2.0.0
---

# Get-ReportConfig

## SYNOPSIS
Obtiene las configuraciones para la generación de archivos.

## SYNTAX

```
Get-ReportConfig [[-Name] <String>]
```

## DESCRIPTION
Obtiene las configuraciones establecidas para la generación de archivos a partir de la ejecucion de un script de SQL Server.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-ReportConfig -Name 'Ejemplo_1'
```

## PARAMETERS

### -Name
Nombre con el que se identifica la configuración.
Para más información vea la función Set-ReportConfig.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: *
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### System.Management.Automation.PSObject

## NOTES
Autor: Jarodriguezc

## RELATED LINKS

[Set-ReportConfig](https://github.com/AlexRodriguez122/PSReports/blob/master/GetConfig/Get-ReportConfig.md)

