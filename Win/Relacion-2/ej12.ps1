# Ejercicio 12: Contar vocales en una frase
# Pide al usuario que ingrese una frase y cuenta cuántas vocales tiene.
Write-Host "Contar las vocales de una frase"
$frase = Read-Host "Ingresa una frase"
$cont = 0
foreach ($letra in $frase.ToCharArray()) {
    if ($letra -in @('a', 'e', 'i', 'o', 'u','A', 'E', 'I', 'O', 'U')) {
        $cont++
        }
        }
        Write-Host "La frase tiene $cont vocales"