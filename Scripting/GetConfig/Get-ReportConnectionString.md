---
external help file: PSReports-help.xml
Module Name: PSReports
online version: 
schema: 2.0.0
---

# Get-ReportConnectionString

## SYNOPSIS
Obtiene las cadenas de conexión a las bases de datos de SQL Server.

## SYNTAX

```
Get-ReportConnectionString [[-Name] <String>]
```

## DESCRIPTION
Obtiene las cadenas de conexión a las bases de datos de SQL Server en donde se van a ejecutar los scripts de T-SQL.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-ReportConnectionString
```

### -------------------------- EXAMPLE 2 --------------------------
```
Get-ReportConnectionString -Name 'Ejemplo_1'
```

### -------------------------- EXAMPLE 3 --------------------------
```
Get-ReportConnectionString -Name 'Prueba*'
```

## PARAMETERS

### -Name
Nombre de la configuración.
Se admiten expresiones con el caracter comodin (*).
Por ejemplo: 'Prueba*'.
Valor predeterminado *.

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

[Get-ReportConnectionString](https://github.com/AlexRodriguez122/PSReports/blob/master/GetConfig/Get-ReportConnectionString.md)

