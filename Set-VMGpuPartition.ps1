$VMName = "win11"

Set-VMProcessor -VMName $VMName -ExposeVirtualizationExtensions $true

Add-VMGpuPartitionAdapter -VMName $VMName
Set-VMGpuPartitionAdapter -VMName $VMName -MinPartitionVRAM 80000000 -MaxPartitionVRAM 100000000 -OptimalPartitionVRAM 100000000 -MinPartitionEncode 80000000 -MaxPartitionEncode 100000000 -OptimalPartitionEncode 100000000 -MinPartitionDecode 80000000 -MaxPartitionDecode 100000000 -OptimalPartitionDecode 100000000 -MinPartitionCompute 80000000 -MaxPartitionCompute 100000000 -OptimalPartitionCompute 100000000

Set-VM -GuestControlledCacheTypes $true -VMName $VMName
Set-VM -LowMemoryMappedIoSpace 1Gb -VMName $VMName
Set-VM –HighMemoryMappedIoSpace 32GB –VMName $VMName

#$VMObj = Get-VM "win11"
#Remove-VMGpuPartitionAdapter -VM $VMObj
