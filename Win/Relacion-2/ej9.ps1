# Ejercicio 9: Números pares en un rango
# Pide al usuario que ingrese dos números (inicio y fin) y muestra todos los números pares en ese rango.
Write-Host "muestra todos los numeros pares en un rango entre los dos numeros que ingrese"
$inicio = [int](Read-Host "ingrese el primer numero")
$fin = [int](Read-Host "ingrese el segundo numero")
for ($i = $inicio; $i -le $fin; $i++) {
    if ($i % 2 -eq 0) {
        Write-Host $i
    }
}
