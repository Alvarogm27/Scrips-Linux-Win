# Ejercicio 7: Factorial de un número
# Pide al usuario que ingrese un número y calcula su factorial.
Write-Host "Factorial de un número"
$numero = [int](Read-Host "Ingrese un número")

if($numero -eq 0){
    Write-Host "El factorial de 0 es 1"
}
else {
    $factorial = 1
for ($i = 1; $i -le $numero; $i++) {
    $factorial *= $i
    }
    Write-Host "El factorial de $numero es $factorial"
}
