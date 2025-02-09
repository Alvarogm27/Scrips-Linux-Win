# Ejercicio 8: Contar dígitos de un número
# Pide al usuario que ingrese un número y cuenta cuántos dígitos tiene.
Write-Host "Contar dígitos de un numero"
$numero = [int](Read-Host "Ingrese un numero")
$numero = $numero -replace "[^0-9]"
if ($numero -eq 0) {
    Write-Host "El numero ingresado no tiene dígitos"
} 
else {
    Write-Host "El numero ingresado tiene $((($numero).Length)) dígitos" 
}
