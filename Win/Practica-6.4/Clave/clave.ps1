function Read-AndCompare {
    param (
        [string]$filePath,  # Ruta del archivo
        [string]$compareTo  # Contenido a comparar
    )

    # Lee el contenido del archivo
    $fileContent = Get-Content -Path $filePath -Raw


    #DESENCRIPTAR UNA CADENA
    $TEXTO = $fileContent
    $fileContent = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($TEXTO))
    Write-Output $DECODED
    # Compara el contenido del archivo con el parámetro recibido

    if ($fileContent -like "*$compareTo*") {
        Write-Host "El contenido del archivo es igual al parámetro recibido."
        return $true
    } else {
        Write-Host "El contenido del archivo NO es igual al parámetro recibido."
        Write-host "$compareTo --------- leido del fichero --------- $fileContent"
        return $false
    }
}

#$filePath = "C:\drive\sc\clave.txt"
$filePath = "D:\Alvaro\ASo\SCRIPTS\Scripts-Linux-Win\Win\Clave\clave.txt"

# Contenido a comprobar
$contentToCompare = "2ASIR"

Read-AndCompare -filePath $filePath -compareTo $contentToCompare