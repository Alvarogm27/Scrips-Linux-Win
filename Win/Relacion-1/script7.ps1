# Ejercicio 7: Calcular el descuento de una compra
# Pide al usuario que ingrese el monto de una compra. Si el monto es mayor a 100, aplica un descuento del 10%.
Write-Host "Descuento del 10%"

$numero = Read-Host "Ingrese el monto de la compra"
$numeroEntero = [int]$numero
if($numeroEntero -gt 100){
    $descuento = $numeroEntero * 0.1
    $montoConDescuento = $numeroEntero - $descuento
    Write-Host "El monto con descuento es: $montoConDescuento"
}
else{
    Write-Host "No hay descuento"
}