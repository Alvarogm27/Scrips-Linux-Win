#ej1
function sumar_numeros{
    Write-Host "Suma numeros hasta que introduzcas 0"
    $numero = [int](Read-Host "Numero")
    $suma = 0
    while ($numero -ne 0) {
        $suma += $numero
        $numero = [int](Read-Host "Numero")
        }
        Write-Host "La suma de los numeros es" $suma
}

#ej2
function contar_numeros{
    param (
        [int[]]$cantidad
    )

    $positivos = 0
    $negativos = 0
    $cero = 0

    if($cantidad.Count -ne 5){
        Write-Host "No has introducido 5 numeros"
        return
    }

    foreach($numero in $cantidad){
        if ($numero -lt 0){
            $negativos++
        }
        elseif($numero -gt 0){
            $positivos++
        }
        else{
            $cero++
        }

    }

    Write-Host "Positivos: $positivos, Negativos: $negativos, Cero: $cero"
}

#ej3
function adivina_numero{
    param (
    [int]$numeroUsuario
    )

    Write-Host "Adivina un numero entre 1 y 10"
    $numeroAleatorio = Get-Random -Minimum 1 -Maximum 10

        if ($numeroUsuario -eq $numeroAleatorio) {
            Write-Host "Lo has acertado"
            break
        }
        elseif ($numeroUsuario -lt $numeroAleatorio) {
            Write-Host "Demasiado bajo"
        }
        else {
            Write-Host "Demasiado alto"
        }
}

#ej4
function mostrar_tabla {
    param(
        [int]$numero
    )
    if($numero -eq 0 -or $numero -lt 0){
        Write-Host "Introduce un numero natural"
    }
    else{
        Write-Host "Tabla de multiplicar de $numero"
        for ($i = 1; $i -le 10; $i++) {
            Write-Host "$i x $numero = $($numero * $i)"
        }
    }
}

#ej5
function es_primo {
    param(
        [int]$numero
    )
    if($numero -ne 0){
        if ($numero % 2 -eq 0 -and $numero -ne 2) {
            Write-Host "El numero $numero no es primo"
        } 
        else{
            Write-Host "El numero $numero es primo"
        }
    }
    else{
        Write-Host "No has introducido numero"
    }
}

#ej6
function suma_n{
    param(
        [int]$N
    )
    if($N -eq 0){
        Write-Host "Introduce un numero positivo"
    }
    else{
        $suma = 0
        for ($i = 1; $i -le $N; $i++) {
            $suma += $i
        }
        Write-Host "La suma de los primeros $N numeros naturales es $suma"
    }
}

#ej7
function calcular_factorial {
    param (
        [int]$numero
    )
    if ($numero -lt 0) {
        Write-Host "No se puede calcular el factorial de un número negativo."
        return
    }
    $factorial = 1
    if ($numero -eq 0) {
        Write-Host "El factorial de 0 es 1"
    }
    else {
        for ($i = 1; $i -le $numero; $i++) {
            $factorial *= $i
        }
        Write-Host "El factorial de $numero es $factorial"
    }
}

#ej8
function contar_digitos {
    param (
        [int]$numero
    )

    # Convertir el número a cadena y eliminar caracteres no numéricos
    $numeroStr = $numero.ToString() -replace "[^0-9]"

    if ($numeroStr -eq "0") {
        Write-Host "El numero ingresado no tiene digitos"
    } 
    else {
        Write-Host "El numero ingresado tiene $($numeroStr.Length) digitos"
    }
}

#ej9
function mostrar_numeros_pares {
    param (
        [int]$inicio,
        [int]$fin
    )

    Write-Host "Numeros pares entre $inicio y $fin :"
    
    for ($i = $inicio; $i -le $fin; $i++) {
        if ($i % 2 -eq 0) {
            Write-Host $i
        }
    }
}

#ej10
function calcular_promedio {
    param (
        [int[]]$n
    )

    $sum = 0

    for ($i = 0; $i -lt $n.Length; $i++) {
        $sum += $n[$i]
    }

    $promedio = $sum / $n.Length
    Write-Host "El promedio de los numeros ingresados es: $promedio"
}