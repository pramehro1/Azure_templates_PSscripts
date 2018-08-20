New-AzureRmVm `
    -ResourceGroupName "PMResourceGroup" `
    -Name "myFirstVM" `
    -Location "East US" `
    -VirtualNetworkName "myFirstVnet" `
    -SubnetName "mySubnet" `
    -SecurityGroupName "myNetworkSecurityGroup" `
    -PublicIpAddressName "myPublicIpAddress" `
    -OpenPorts 80,3389