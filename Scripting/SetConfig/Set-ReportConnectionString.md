---
external help file: PSReports-help.xml
Module Name: PSReports
online version: 
schema: 2.0.0
---

# Set-ReportConnectionString

## SYNOPSIS
Crea o actualiza una cadena de conexión a una base de datos de SQL Server.

## SYNTAX

```
Set-ReportConnectionString [-ConnectionString] <String> [-Name] <String> [-Force]
```

## DESCRIPTION
Crea o actualiza una cadena de conexión a una base de datos de SQL Server para la ejecución de scripts de T-SQL.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Set-ReportConnectionString -Name 'Ejemplo_1' -ConnectionString 'Data Source=1.1.1.1;Initial Catalog=bd;Integrated Security=True'
```

### -------------------------- EXAMPLE 2 --------------------------
```
Set-ReportConnectionString -Name 'Ejemplo_1' -ConnectionString 'Data Source=100.100.100.100;Initial Catalog=BDName;User ID=Usuario;Password=Pwd123' -Force
```

### -------------------------- EXAMPLE 3 --------------------------
```
New-SqlConnectionDialog | Set-ReportConnectionString -Name 'Ejemplo_1'
```

### -------------------------- EXAMPLE 4 --------------------------
```
New-SqlConnectionDialog | Set-ReportConnectionString -Name 'Ejemplo_1' -Force
```

## PARAMETERS

### -ConnectionString
Cadena de conexión a la base de datos de SQL Server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Nombre con el que se identifica la conexión a la base de datos.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Cuando está presente sobrescribe la configuración.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### System.Void

## NOTES
Autor: Jarodriguezc

## RELATED LINKS

[Get-ReportConnectionString](https://github.com/AlexRodriguez122/PSReports/blob/master/Scripting/SetConfig/Set-ReportConnectionString.md)

