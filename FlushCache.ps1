$input = Get-Content c:\temp\wordCount.txt
<# $inpath = "C:\users\xxxxx\desktop\cgc\tx"    #>
$inpath = "C:\temp\tx"  
$srcfiles = Get-ChildItem $inpath -filter "*.txt"    
$notPermittedWords = Get-Content c:\temp\exclude.txt 
