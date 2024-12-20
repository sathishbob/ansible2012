# PowerShell Script to Generate Custom Fact JSON

# Define custom facts
$customFact = @{
    ansible_local = @{
        custom_fact = @{
            company_name = "MyCompany"
            server_role  = "web"
            environment  = "production"
            uptime       = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
        }
    }
}

# Convert to JSON and output
$customFact | ConvertTo-Json -Depth 3

