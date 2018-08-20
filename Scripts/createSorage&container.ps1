$storageName = "st" + (Get-Random)
New-AzureRmStorageAccount -ResourceGroupName "PrateekResourceGroup" -AccountName $storageName -Location "Central India" -SkuName "Standard_LRS" -Kind Storage
$accountKey = (Get-AzureRmStorageAccountKey -ResourceGroupName PrateekResourceGroup -Name $storageName).Value[0]
$context = New-AzureStorageContext -StorageAccountName $storageName -StorageAccountKey $accountKey 
New-AzureStorageContainer -Name "templates" -Context $context -Permission Container