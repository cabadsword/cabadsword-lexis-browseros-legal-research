param(
    [Parameter(Mandatory = $true)]
    [string]$Query
)

$encoded = [System.Net.WebUtility]::UrlEncode($Query)
$url = "https://plus.lexis.com/search/?pdmfid=1530671&pdsearchterms=$encoded&pdtypeofsearch=searchboxclick&pdsearchtype=SearchBox&pdstartin=&pdpsf=oop%3A1%3A1&pdqttype=and&pdquerytemplateid=&pdsf=&ecomp=pygg&earg=pdpsf"
Write-Output $url
