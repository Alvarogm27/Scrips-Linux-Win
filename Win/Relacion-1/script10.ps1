# Ejercicio 10: Calcular el IMC (Índice de Masa Corporal)
# Pide al usuario que ingrese su peso (en kg) y altura (en metros), calcula el IMC y
# muestra si está en bajo peso (índice menor de 18), normal (índice entre 18 y 25),
# sobrepeso (índice entre 25 y 30) u obesidad (índice mayor que 30).

Write-Host "Calculo IMC"
$peso = [float](Read-Host "Peso (en kg)")
$altura = [float](Read-Host "Altura (en metros)")
$imc = $peso / ($altura * $altura)
if ($imc -lt 18) {
    Write-Host "Bajo peso"
}
elseif ($imc -gt 18 -and $imc -lt 25) {
    Write-Host "Normal"
} 
elseif ($imc -gt 25 -and $imc -lt 30){
    Write-Host "Sobrepeso"
}
else {
   Write-Host "Obesidad"
}