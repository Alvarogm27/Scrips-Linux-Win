# Ejercicio 1: Verificar si un número es positivo o negativo
# Pide al usuario que ingrese un número y verifica si es positivo, negativo o cero.

$numero = Read-Host "Ingresa un numero"
$numeroEntero = [int]$numero

if ($numeroEntero -gt 0) {
    Write-Output "EL numero es positivo"
}
elseif ($numeroEntero -lt 0) {
    Write-Output "EL numero es negativo"
}
else {
    <# Action when all if and elseif conditions are false #>
    Write-Output "EL numero es cero"
}