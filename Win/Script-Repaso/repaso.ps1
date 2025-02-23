#Script menu interactivo de repaso

function gestion_archivos{

    Write-Host "1 - Crear un archivo en una ruta especifica"
    Write-Host "2 - Mover un archivo de una carpeta a otra"
    Write-Host "3 - Copiar un archivo a otra ubicacion"
    Write-Host "4 - Eliminar un archivo"
    Write-Host "Presiona 'Enter' Para volver al menu principal"

    $gestion_archivos = Read-Host "Elige una opcion de la gestion de archivos"

    if ($gestion_archivos -eq "1"){

        $ruta = Read-Host "Escribe la ruta que del archivo que desea crear"
        $nombre = Read-Host "Nombre del archivo"

        if(Test-Path $ruta){
            New-Item -Path $ruta -Name $nombre -Force
            Write-Host "Archivo creado con exito"
        }
        else{
            Write-Host "Ruta no encontrada"
        }
    }

    elseif ($gestion_archivos -eq "2"){

        $ruta = Read-Host "Escribe la ruta del archivo que quieres mover de carpeta"
        $destino = Read-Host "Escribe la ruta de destino"

        if(Test-Path $ruta){
            Move-Item -Path $ruta -Destination $destino -Force
            Write-Host "Archivo movido con exito"
        }
        else{
            Write-Host "No se ha encontrado la ruta o destino del archivo"
        }
    }

    elseif ($gestion_archivos -eq "3") {
        
        $ruta = Read-Host "Escribe la ruta del archivo que quieres copiar"
        $destino = Read-Host "Escribe la ruta de destino"

        if(Test-Path $ruta){
            Copy-Item -Path $ruta -Destination $destino -Force
            Write-Host "Se ha copiado el archivo con exito"
        }
        else{
            Write-Host "No se ha encontrado la ruta o destino del archivo"
        }
    }
    elseif ($gestion_archivos -eq "4") {
        
        $ruta = Read-Host "Escribe la ruta del archivo que quieres eliminar"

        if(Test-Path $ruta){
            Remove-Item -Path $ruta -Recurse -Force
            Write-Host "Archivo eliminado con exito"
        }
        else{
            Write-Host "Ruta no encontrada"
     }
    }
    else{
        Write-Host "No ha introducido un valor correcto"
    }
}

function gestion_procesos{
    
    Write-Host "1 - Listar todos los procesos en ejecucion"
    Write-Host "2 - Activar un proceso por nombre"
    Write-Host "3 - Detener un proceso por ID"
    Write-Host "Presiona 'Enter' Para volver al menu principal"
    
    $gestion_procesos = Read-Host "Elige una opcion de la gestion de procesos"

    if ($gestion_procesos -eq "1") {
        Get-Process 
    }

    elseif ($gestion_procesos -eq "2") {
    $nombre = Read-Host "Nombre del proceso que desea activar"
    
    # Verificar si el proceso ya está en ejecución
    if (Get-Process -Name $nombre -ErrorAction SilentlyContinue) {
        Write-Host "El proceso '$nombre' ya está en ejecución."
    }
    else {
        try {
            Start-Process -Name $nombre -ErrorAction Stop
            Write-Host "Proceso '$nombre' activado con éxito."
        }
        catch {
            Write-Host "Error: No se pudo iniciar el proceso '$nombre'. Verifica que el nombre sea correcto o usa la ruta completa."
        }
      }
    }

    elseif ($gestion_procesos -eq "3") {
        $id = Read-Host "ID del proceso que desea detener"
        if(Get-Process -Id $id -ErrorAction SilentlyContinue){ #SilentlyContinue Para que no muestre el error que da por defecto Windows
            Stop-Process -Id $id -Force
            Write-Host "Proceso detenido con exito"
        }
        else{
            Write-Host "No se ha encontrado el proceso"
        }
    }

    else{
        Write-Host "Introduzca un valor valido"
    }


}

function gestion_usuarios{

    Write-Host "1 - Crear un usuario local"
    Write-Host "2 - Eliminar un usuario local"
    Write-Host "3 - Listar usuarios locales existentes"
    Write-Host "4 - Agregar un usuario a un grupo"
    Write-Host "Presiona 'Enter' Para volver al menu principal"

    $gestion_usuarios = Read-Host "Elige una opcion de gestion de usuarios"

    if ($gestion_usuarios -eq "1") {
        $nombre = Read-Host "Nombre del usuario"
        $contrasena = Read-Host "Contrasena del usuario"

        if (Get-LocalUser $nombre -ErrorAction SilentlyContinue){
            Write-Host "El usuario local ya esta creado"
        }
        else{
            New-LocalUser -Name $nombre -Password $contrasena
        }
    }

    elseif ($gestion_usuarios -eq "2") {
        $nombre = Read-Host "Nombre del usuario que quieres eliminar"
        if (Get-LocalUser $nombre -ErrorAction SilentlyContinue){
            Remove-LocalUser -Name $nombre
            Write "Usuario eliminado con exito"
        }
        else{
            Write-Host "No se ha encontrado al usuario"
        }
    }
    elseif ($gestion_usuarios -eq "3") {
        Get-LocalUser 
    }
    elseif ($gestion_usuarios -eq "4") {
        $nombre_usuario = Read-Host "Nombre usuario"
        $nombre_grupo = Read-Host "Nombre grupo"
        Add-LocalGroupMember -Group $nombre_grupo -Member $nombre_usuario
    }
    else{
        Write-Host "Valor introducido no valido"
    }
}


while($true){
    Write-Host "1 - Gestion de archivos"
    Write-Host "2 - Gestion de procesos"
    Write-Host "3 - Gestion de usuarios"
    Write-Host "4 - Salir"

    $opcion = Read-Host "Elige una opcion"

    switch($opcion){
        "1" { gestion_archivos }
        "2" { gestion_procesos }
        "3" { gestion_usuarios }
        "4" { Write-Host "Saliendo..."; exit}
        default { Write-Host "Opcion no valida. Intenta de nuevo." }
    }

}