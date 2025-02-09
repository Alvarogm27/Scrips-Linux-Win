# Ejercicio 14: Juego de adivinar un número con intentos limitados
# Genera un número aleatorio entre 1 y 100 y da al usuario 5 intentos para adivinarlo.
Write-Host "Tienes 5 intentos para adivinar un numero entre el 1 y 100"
$numeroAleatorio = Get-Random -Minimum 1 -Maximum 101
$intentos = 5
while ($intentos -gt 0) {
    $numero = [int](Read-Host "Introduce un numero")
    if ($numero -eq $numeroAleatorio) {
        Write-Host "Has acertado el numero"
        exit
        } elseif ($numero -lt $numeroAleatorio) {
            Write-Host "El numero que has introducido es menor que el numero aleatorio"
            $intentos--
            Write-Host "Te quedan $intentos intentos"
            } else {
                Write-Host "El numero que has introducido es mayor que el numero aleatorio"
                $intentos--
                Write-Host "Te quedan $intentos intentos"
                }
}
if ($intentos -eq 0) {
    Write-Host "Has agotado todos los intentos, el numero era $numeroAleatorio"
    exit
}
                