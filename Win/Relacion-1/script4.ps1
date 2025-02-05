# Ejercicio 4: Verificar si un año es bisiesto
# Pide al usuario que ingrese un año y verifica si es bisiesto.
Write-Host "Ingresa un ano para verificar si es bisiesto: "

$ano = Read-Host "Year"
$anoEntero = [int]$ano
if ($anoEntero % 4 -eq 0 -and $anoEntero % 1000 -ne 0 -or $anoEntero % 400 -eq 0) {
    Write-Host "El ano $anoEntero es bisiesto."
} else {
    Write-Host "El ano $anoEntero no es bisiesto."  
}