$services = [PSCustomObject]@{}

$services | Add-Member NoteProperty -Name AllServices -Value (Get-Service)
$services | Add-Member Method -Name GetServices -Value {$this.AllServices = Get-Service; return $this.AllServices}

#Add properties/method to filter services based on the state
#Add method to save current services state to a file
#Add method to reinstate the status of the services based on the saved file

#$services.GetServices()
$services.AllServices