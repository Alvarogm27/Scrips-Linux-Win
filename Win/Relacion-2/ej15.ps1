# Ejercicio 15: Mostrar los divisores de un número
# Pide al usuario que ingrese un número y muestra todos sus divisores.
Write-Host "Mostrar los divisores de un número"

$numero = Read-Host "Ingrese un número"
for ($i = 1; $i -le $numero; $i++) {
    if ($numero % $i -eq 0) {
        Write-Host "$i es un divisor de $numero"
        }
        }
