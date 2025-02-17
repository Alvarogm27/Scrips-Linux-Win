# Ruta del archivo con la contraseña encriptada
$PasswordFile = "D:\Alvaro\ASo\SCRIPTS\Scripts-Linux-Win\Win\Clave\clave.txt"

# Leer y desencriptar la contraseña almacenada
$EncodedPassword = Get-Content $PasswordFile
$DecodedPassword = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($EncodedPassword))

# Pedir contraseña al usuario
$UserPassword = Read-Host "Introduce la contraseña" -AsSecureString
$UserPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringUni([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($UserPassword))

if ($UserPassword -ne $DecodedPassword) {
    Write-Host "Contraseña incorrecta. Saliendo..."
    exit
}

function borrar_archivos {
    $ruta = Read-Host "Introduce la ruta de los archivos a borrar"
    if (Test-Path $ruta) {
        Remove-Item -Path $ruta -Recurse -Force
        Write-Host "Archivos borrados en $ruta"
    } else {
        Write-Host "Ruta no encontrada."
    }
}

function parar_proceso {
    $proceso = Read-Host "Introduce el nombre o ID del proceso a detener"
    Stop-Process -Name $proceso -Force -ErrorAction SilentlyContinue
    Write-Host "Proceso $proceso detenido."
}

function guardar_servicios {
    $ruta = Read-Host "Introduce la ruta donde guardar la lista de servicios"
    Get-Service -ErrorAction SilentlyContinue | Out-File -FilePath $ruta
    Write-Host "Servicios guardados en $ruta"
}

# Bucle del menú
while ($true) {
    Write-Host "1 - Borrar archivos de una ruta"
    Write-Host "2 - Parar un proceso"
    Write-Host "3 - Guardar servicios en un fichero"
    Write-Host "4 - Salir"
    
    $opcion = Read-Host "Selecciona una opción"
    
    switch ($opcion) {
        "1" { borrar_archivos }
        "2" { parar_proceso }
        "3" { guardar_servicios }
        "4" { Write-Host "Saliendo..."; exit }
        default { Write-Host "Opción no válida. Intenta de nuevo." }
    }
}
