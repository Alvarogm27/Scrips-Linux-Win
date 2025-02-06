# Ejercicio 3: Adivinar un número aleatorio
# Genera un número aleatorio entre 1 y 10 y pide al usuario que lo adivine.
Write-Host "Adivina un numero entre 1 y 10"
$numeroAleatorio = Get-Random -Minimum 1 -Maximum 11
while ($true) {
    $numeroUsuario = Read-Host "Cual es tu numero"
    if ($numeroUsuario -eq $numeroAleatorio) {
        Write-Host "Lo has acertado"
        break # Si adivina el numero sale del bucle while
    } 
    elseif ($numeroUsuario -lt $numeroAleatorio) {
        Write-Host "Demasiado bajo"
    } 
    else {
        Write-Host "Demasiado alto"
    }
}