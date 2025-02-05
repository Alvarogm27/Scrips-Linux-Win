# Ejercicio 5: Validar una contraseña
# Pide al usuario que ingrese una contraseña y verifica si es correcta (por ejemplo, la contraseña correcta es "admin123").

Write-Host "Ingresa la contrasena correcta"
$contrasena = Read-Host "Contrasena"

if ($contrasena -eq "admin123") {
    Write-Host "La contrasena es correcta"
}else{
    Write-Host "La contrasena es incorrecta"
}