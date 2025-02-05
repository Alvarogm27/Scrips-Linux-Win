# Ejercicio 9: Verificar si un número es múltiplo de 3 o 5
# Pide al usuario que ingrese un número y verifica si es múltiplo de 3 o 5.
Write-Host "El numero es multiplo de 3 o 5"
$numero = [int] (Read-Host "Ingresa el numero")
if($numero % 3 -eq 0 -and $numero % 5 -eq 0){
    Write-Host "El numero es multiplo de 3 y 5"
}
elseif ($numero % 3 -eq 0){
    Write-Host "El numero es multiplo de 3"
}
elseif ($numero % 5 -eq 0) {
     Write-Host "El numero es multiplo de 5"
}

else {
    Write-Host "El numero no es multiplo de 3 o 5"
}