$ComputerName = Read-Host -Prompt 'Please enter a computer name'

Get-Service -ComputerName $ComputerName | 
	Select-Object Name, Status, StartType, MachineName |
	Sort-Object { $_.Status.ToString() }, Name |
	Out-GridView