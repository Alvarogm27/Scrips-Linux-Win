# Ejercicio 8: Verificar si un carácter es una vocal
# Pide al usuario que ingrese un carácter y verifica si es una vocal.
Write-Host "Introduce un caracter para ver si es vocal"
$vocal = Read-Host "Introduce una letra"

if ($vocal -match "[aeiouAEIOU]"){
    Write-Host "El caracter es vocal"
}
else{
    Write-Host "El caracter no es vocal"
}