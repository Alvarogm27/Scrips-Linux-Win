$TEXTO = '2ASIR'
$ENCODED = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($TEXTO))
Write-Output $ENCODED
