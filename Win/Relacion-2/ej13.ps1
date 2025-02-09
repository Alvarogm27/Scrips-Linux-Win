# Ejercicio 13: Generar la secuencia de Fibonacci
# Pide al usuario que ingrese un número N y genera la secuencia de Fibonacci hasta N términos.
Write-Host "Secuencia Fibonacci hasta N"
$N = [int](Read-Host "Ingrese un número N")
$Fib = @(0, 1)
while ($Fib[-1] -lt $N) {
    $Fib += $Fib[-1] + $Fib[-2]
}
Write-Host $Fib
    