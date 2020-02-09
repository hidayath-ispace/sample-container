#login to azure
Install-Module -Name az -AllowClobber -Scope AllUsers
Connect-AzAccount
Get-AzResourceGroup
New-AzResourceGroup -Name ps-res-grp -Location southeastasia
New-AzResourceGroupDeployment -Name mydeployment -ResourceGroupName ps-res-grp -TemplateFile C:\az_203\MyResGrp_25Jan\linuxtemplate.json -TemplateParameterFile C:\az_203\MyResGrp_25Jan\linuxparameters.json

New-AzResourceGroup -Name iaas-grp -Location southeastasia
New-AzResourceGroupDeployment -Name mydeployment -ResourceGroupName iaas-grp -TemplateFile C:\az_203\azuredepoly.json