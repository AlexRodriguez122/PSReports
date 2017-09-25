---
external help file: PSReports-help.xml
Module Name: PSReports
online version: 
schema: 2.0.0
---

# Set-ReportConfig

## SYNOPSIS
Crea o actualiza una configuración para la generación de archivos a partir de la ejecucion de un script de SQL Server.

## SYNTAX

### WithOutputPath
```
Set-ReportConfig -Name <String> -InputPath <String> -OutputPath <String> [-Delimiter <Char>]
 -ConnectionStringKey <String> [-ReportName <String>] [-ScriptName <ScriptBlock>]
 [-TransferMode <TransferMode>] [-EncryptedKey <String>] [-RepositoryKey <String>] [-RepositoryPath <String>]
 [-EmailKey <String>] [-EmailTo <String>] [-Header] [-Force]
```

### WithRepositoryandEmail
```
Set-ReportConfig -Name <String> -InputPath <String> [-Delimiter <Char>] -ConnectionStringKey <String>
 [-ReportName <String>] [-ScriptName <ScriptBlock>] [-TransferMode <TransferMode>] [-EncryptedKey <String>]
 -RepositoryKey <String> -RepositoryPath <String> -EmailKey <String> -EmailTo <String> [-Header] [-Force]
```

### WithRepository
```
Set-ReportConfig -Name <String> -InputPath <String> [-Delimiter <Char>] -ConnectionStringKey <String>
 [-ReportName <String>] [-ScriptName <ScriptBlock>] [-TransferMode <TransferMode>] [-EncryptedKey <String>]
 -RepositoryKey <String> -RepositoryPath <String> [-Header] [-Force]
```

### WithEmail
```
Set-ReportConfig -Name <String> -InputPath <String> [-Delimiter <Char>] -ConnectionStringKey <String>
 [-ReportName <String>] [-ScriptName <ScriptBlock>] [-TransferMode <TransferMode>] [-EncryptedKey <String>]
 -EmailKey <String> -EmailTo <String> [-Header] [-Force]
```

## DESCRIPTION
Crea o actualiza una configuración de una carpeta para la ejecución del "Script.sql" que se encuentra dentro de esta.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Set-ReportConfig -Name 'Ejemplo_1' -InputPath 'C:\Ruta' -ConnectionStringKey 'Ejemplo_1' -ReportName 'Reporte{0:yyyy-MM-dd}.txt' -EncryptedKey 'PGP_Ejemplo_1' -EmailKey 'SMTP_Ejemplo_1' -EmailTo 'ejemplo@Processa.com' -Header
```

### -------------------------- EXAMPLE 2 --------------------------
```
Set-ReportConfig -Name 'Ejemplo_1' -InputPath 'C:\Ruta' -OutputPath 'C:\Ruta' -Delimiter '|' -ConnectionStringKey 'Ejemplo_1' -ReportName 'Reporte.txt' -TransferMode Binary -MailKey 'SMTP_Ejemplo_1' -MailTo 'ejemplo@Processa.com' -Header
```

### -------------------------- EXAMPLE 3 --------------------------
```
Set-ReportConfig -Name 'Ejemplo_1' -InputPath 'C:\Ruta' -OutputPath 'C:\Ruta' -Delimiter '|' -ConnectionStringKey 'Ejemplo_1' -ReportName 'Reporte{0:yyyy-MM-dd}.txt' -TransferMode Binary -RepositoryKey 'sftp_Ejemplo_1' -RepositoryPath '\Ruta\' -EmailKey 'SMTP_Ejemplo_1' -EmailTo 'ejemplo@Processa.com'
```

### -------------------------- EXAMPLE 4 --------------------------
```
Set-ReportConfig -Name 'Ejemplo_1' -InputPath 'C:\Ruta' -Delimiter '|' -TransferMode Binary -ConnectionStringKey 'Ejemplo_1' -ReportName 'Reporte.txt ' -EncryptedKey 'PGP_Ejemplo_1' -RepositoryKey 'sftp_Ejemplo_1' -RepositoryPath '\Ruta\'
```

### -------------------------- EXAMPLE 5 --------------------------
```
Set-ReportConfig -Name 'Ejemplo_1' -InputPath 'C:\Ruta' -OutputPath 'C:\Ruta' -Delimiter '|' -TransferMode Binary -ConnectionStringKey 'Ejemplo_1' -ScriptName {'Reporte_{0:yyyyMMdd}.csv' -f ((Get-Date).AddDays(-1))} -EncryptedKey 'PGP_Ejemplo_1' -RepositoryKey 'sftp_Ejemplo_1' -RepositoryPath '\Ruta\' -EmailKey 'SMTP_Ejemplo_1' -EmailTo 'ejemplo@Processa.com'
```

## PARAMETERS

### -Name
Nombre con el que se identifica la configuración.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputPath
Ruta de la carpeta donde se buscara el archivo "Script.sql" para generar el archivo.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputPath
Ruta de la carpeta donde se dejara el archivo, por si se desea conservar.

```yaml
Type: String
Parameter Sets: WithOutputPath
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Delimiter
Especifica un delimitador para separar los valores de propiedad.
El valor por defecto es una coma (,).

```yaml
Type: Char
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: ,
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectionStringKey
Nombre de la llave que contiene la conexión a la base de datos, esta debe ser creada previamente.
Para más información vea la función (Set-ReportConnectionString o Get-ReportConnectionString).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportName
Nombre con el cual se genera el archivo.
Recibe el nombre del archivo completo o el nombre mas una cadena de formato de 
fecha de C#.
Ejemplo: prueba.csv, prueba{0:yyyyMMdd}.csv, Tiene el Valor por defecto Output_{0:yyyyMMdd}.csv y por defecto 
la fecha es el dia anterior a la ejecucion del reporte.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: Output_{0:yyyyMMdd}.csv
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptName
Script de Powershell con el cual se genera el nombre del archivo.
Este tiene relevancia sobre el parámetro 'ReportName'.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TransferMode
Modo de transferencia del archivo al S/FTP.
Los valores posibles son Binary, Ascii y Automatic. 
Valor predeterminado es Automatic (basado en la extensión del archivo).

```yaml
Type: TransferMode
Parameter Sets: (All)
Aliases: 
Accepted values: Binary, Ascii, Automatic

Required: False
Position: Named
Default value: Automatic
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptedKey
Nombre de la llave que contiene la configuración para encriptar el archivo.
Para más información vea las funciones de 
PSProcessa (Register-EncryptingKeys o Get-EncryptingKeys).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RepositoryKey
Nombre de la llave que contiene la configuración para publicación del archivo en un repositorio S/FTP.
Para más información 
vea las funciones de PSProcessa (Register-RepositoryFiles o Get-RepositoryFiles).

```yaml
Type: String
Parameter Sets: WithOutputPath
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: WithRepositoryandEmail, WithRepository
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RepositoryPath
Ruta en el repositorio S/FTP en donde será publicado el archivo.

```yaml
Type: String
Parameter Sets: WithOutputPath
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: WithRepositoryandEmail, WithRepository
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmailKey
Nombre de la llave que contiene la configuración para el envió de correo, notificando como termino la ejecución del script. 
Para más información vea las funciones de PSProcessa (Register-SmtpConnection o Get-SmtpConnection).

```yaml
Type: String
Parameter Sets: WithOutputPath
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: WithRepositoryandEmail, WithEmail
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmailTo
Cuentas de correo electrónico a las cuales se enviara la notificación de como termino la ejecución del archivo.
Si desea enviar mas de una cuenta
las puede separar por el caracter de coma (,).

```yaml
Type: String
Parameter Sets: WithOutputPath
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: WithRepositoryandEmail, WithEmail
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Header
Cuando está presente determina que el archivo debe contener encabezados.
Tener en cuenta que los encabezados serán los generados por el Script.sql.

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

### -Force
Cuando está presente sobrescribe la configuración con el mismo nombre.
Parametro: 'Name'.

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

[Get-ReportConfig]()

