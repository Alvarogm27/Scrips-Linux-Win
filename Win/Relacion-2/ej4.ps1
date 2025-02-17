# Ejercicio 4: Tabla de multiplicar
# Pide al usuario que ingrese un número y muestra su tabla de multiplicar del 1 al 10.
Write-Host "Tabla multiplicar del numero"
$numero = [int](Read-Host "Numero")
$r = 0
while ($r -eq 0){
    Write-Host "Tabla de multiplicar de $numero"
    Write-Host "1 x $numero = $($numero*1)"
    Write-Host "2 x $numero = $($numero*2)"
    Write-Host "3 x $numero = $($numero*3)"
    Write-Host "4 x $numero = $($numero*4)"
    Write-Host "5 x $numero = $($numero*5)"
    Write-Host "6 x $numero = $($numero*6)"
    Write-Host "7 x $numero = $($numero*7)"
    Write-Host "8 x $numero = $($numero*8)"
    Write-Host "9 x $numero = $($numero*9)"
    Write-Host "10 x $numero = $($numero*10)"
    $r = 1
}