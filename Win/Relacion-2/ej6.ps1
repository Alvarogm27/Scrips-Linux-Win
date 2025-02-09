# Ejercicio 6: Sumar los primeros N números naturales
# Pide al usuario que ingrese un número N y suma los primeros N números naturales.
Write-Host "Sumar los primeros N numeros naturales"
$N = [int](Read-Host "Ingrese un numero N")
$suma = 0
for ($i = 1; $i -le $N; $i++) {
    $suma += $i
}
Write-Host "La suma de los primeros $N numeros naturales es $suma"