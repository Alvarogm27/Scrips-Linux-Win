#Ejercicio 6: Verificar si un número está en un rango
#Pide al usuario que ingrese un número y verifica si está entre 1 y 100.
Write-Host "Verifacion si el numero esta entre 1 y 100"
$numero = Read-Host "Ingrese un numero"
$numeroEntero = [int]$numero
if ($numeroEntero -ge 1 -and $numeroEntero -le 100) {
    Write-Host "El numero $numeroEntero esta entre 1 y 100"
}else{
    Write-Host "El numero $numeroEntero no esta entre 1 y 100" 
}