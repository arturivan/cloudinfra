$pubName="Canonical"
Get-AzVMImageOffer -Location $locName -PublisherName $pubName | Select-Object Offer

$offerName="ubuntu-24_04-lts"
Get-AzVMImageSku -Location $locName -PublisherName $pubName -Offer $offerName | Select-Object Skus