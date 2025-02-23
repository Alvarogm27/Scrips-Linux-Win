#Script menu interactivo de repaso

function gestion_archivos{

    Write-Host "1 - Crear un archivo en una ruta especifica"
    Write-Host "2 - Mover un archivo de una carpeta a otra"
    Write-Host "3 - Copiar un archivo a otra ubicacion"
    Write-Host "4 - Eliminar un archivo"

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

    if ($gestion_archivos -eq "2"){

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

    if ($gestion_archivos -eq "3") {
        
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
    if ($gestion_archivos -eq "4") {
        
        $ruta = Read-Host "Escribe la ruta del archivo que quieres eliminar"

        if(Test-Path $ruta){
            Remove-Item -Path $ruta -Recurse -Force
            Write-Host "Archivo eliminado con exito"
        }
        else{
            Write-Host "Ruta no encontrada"
     }
    }
}