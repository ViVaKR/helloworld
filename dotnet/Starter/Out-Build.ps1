[CmdletBinding()]
param (
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Name
)

begin {
    Write-Host "Begin Publish... ${Name}"
}

process {
    dotnet build $Name -c release -o ./output/${Name} --nologo
}

end {
    Write-Host "Completed ... ./output/${Name}"
}
