Get-Content .env| Foreach-Object{
    $var = $_.Split('=')
    New-Variable -Name $var[0] -Value $var[1]  
 }
 $OUTPUT=$DATA+"/output"
 $build=$DATA+"/build/*"
 Remove-Item $OUTPUT -Recurse
 New-Item -Path $OUTPUT -ItemType directory
 Copy-Item -Path  $build -Destination $OUTPUT -Recurse
 Copy-Item -Path  $DATA/*.md -Destination $OUTPUT 