# Ejercicio 2: Contar números positivos y negativos
# Pide al usuario que ingrese 5 números y cuenta cuántos son positivos y cuántos son negativos.
Write-Host "Contar numeros positivos y negativos"

$contador = 0
$positivos = 0
$negativos = 0
while ($contador -lt 5) {
    $numero = [int](Read-Host "Numero")
    if($numero -lt 0 ){
        $negativos++
    }
    else{
        $positivos++
    }
    $contador ++
}

Write-Host "Positivos: $positivos, Negativos: $negativos"