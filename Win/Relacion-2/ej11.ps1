# Ejercicio 11: Verificar si una palabra es un palíndromo
# Pide al usuario que ingrese una palabra y verifica si es un palíndromo (se lee igual al revés).
Write-Host "Verificar si una palabra es un palíndromo"
$palabra = Read-Host "Ingrese una palabra"
# Convierte la palabra ingresada a minuscula y quita espacios
$palabra = $palabra.ToLower() -replace '\s', ''

# Invertimos la palabra
$invertida = -join ($palabra.ToCharArray()[-1..-($palabra.Length)])

if ($palabra -eq $invertida) {
    Write-Host "La palabra $palabra es un palíndromo."
} else {
    Write-Host "La palabra $palabra no es un palíndromo."
}