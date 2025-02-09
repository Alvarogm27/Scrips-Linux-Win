# Ejercicio 10: Calcular el promedio de N números
# Pide al usuario que ingrese N números y calcula su promedio.
Write-Host "Calcular el promedio de N números"

$n = [int](Read-Host "Ingrese el número de números a ingresar")
$sum = 0
for ($i = 1; $i - $n; $i++) {
    $num = Read-Host "Ingrese el número $i"
    $sum += $num
}
    $promedio = $sum / $n
    Write-Host "El promedio de los números ingresados es: $promedio"