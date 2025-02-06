# Ejercicio 5: Verificar si un número es primo
# Pide al usuario que ingrese un número y verifica si es primo.
Write-Host "Verificar si el numero es primo"
$numero = Read-Host "Ingrese un número"
if ($numero % 2 -eq 0 -and $numero -ne 2) {
    Write-Host "El numero $numero no es primo"
} 
else{
    Write-Host "El numero $numero es primo"
}