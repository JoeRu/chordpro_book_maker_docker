Get-Content .env| Foreach-Object{
    $var = $_.Split('=')
    New-Variable -Name $var[0] -Value $var[1]  
 }
$OUTPUT=$DATA+"/output"
$INPUT=$OUTPUT+"/horschema.epub"
$kindle=$OUTPUT+"/horschema.mobi"
& "C:\Program Files\Calibre2\ebook-convert.exe" $INPUT $kindle