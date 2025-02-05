# Ejercicio 3: Comparar dos números
# Pide al usuario que ingrese dos números y compara cuál es mayor o si son iguales.

Write-Host "Compara dos numero"
$numero1 = Read-Host "Numero 1"
$numero2 = Read-Host "Numero 2"
$numeroEntero1 = [int]$numero1
$numeroEntero2 = [int]$numero2

if($numeroEntero1 -gt $numeroEntero2){
    Write-Host "$numeroEntero1 es mayor que $numeroEntero2"
}
elseif($numeroEntero1 -lt $numeroEntero2){
    Write-Host "$numeroEntero1 es menor que $numeroEntero2"
}
else{
    Write-Host "$numeroEntero1 es igual a $numeroEntero2"
    }