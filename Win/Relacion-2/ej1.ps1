# Ejercicio 1: Sumar números hasta que el usuario introduzca un 0
# Pide al usuario que ingrese números y suma todos los valores hasta que ingrese 0.
Write-Host "Suma numeros hasta que introduzcas 0"
$numero = [int](Read-Host "Numero: ")
$suma = 0
while ($numero -ne 0) {
    $suma += $numero
    $numero = [int](Read-Host "Numero: ")
    }
    $suma