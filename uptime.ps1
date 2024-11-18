<#will take as input, services from a user, then check connectivity over a given time interval until stopped#>

$raw_services = read-host("please enter the IPv4 addresses of services you would like to monitor, separated by a comma ")

$services = $raw_services -split (",")

for ($i = 0; $i -lt $services.Length; $i++){
	ping $services[$i]
}


