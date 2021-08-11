# To run, use . ./Introduction.ps1

# Basic Shit:
Write-Output 'Hello'

# $ used for variables
$today = Get-Date

$Date = $today.Date
$Day = $today.Day
$DayOfWeek = $today.DayOfWeek
$DayOfYear = $today.DayOfYear
$Hour = $today.Hour
$Kind = $today.Kind
$Minute = $today.Minute
$Second = $today.Second
$Month = $today.Month
$Year = $today.Year

Write-Output "Date: $Date"
Write-Output "DayOfWeek: $DayOfWeek"
Write-Output "DayOfYear: $DayOfYear"
Write-Output "Kind: ${Kind}`n"
Write-Output "${Month}/${Day}/${Year} T ${Hour}:${Minute}:${Second}`n"


