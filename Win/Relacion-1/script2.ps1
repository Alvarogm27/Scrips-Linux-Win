# Ejercicio 2: Verificar si un número es par o impar
# Pide al usuario que ingrese un número y verifica si es par o impar.

$numero = Read-Host "Verificacion si el numero es par o impar"
$numeroEntero = [int]$numero
$comprobacion = $numeroEntero % 2

if($comprobacion -eq 0){
    Write-Host "El numero $numeroEntero es par"
}
else{
    Write-Host "El numero $numeroEntero es impar"
}