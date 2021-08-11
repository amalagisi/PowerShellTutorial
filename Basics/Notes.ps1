
# PowerShell is a command-line shell and a scripting 
# - language.

# Powershell utilizes pipelines to run commands 
# - sequentially. It operates on objects over text

# PowerShell supports use of common aliases 
# - (alternate names that can be used to run 
# - commands) such as cls and ls.

# Powershell operates on objects over text. You use
# - objects as input and output

# Powershell has cmdlets. These are built on a 
# - common runtime rather than separate executables.
# - Cmdlets take object input and return objects
# - Built in .NET Core and are open source
# - Can build cmdlets in .Net Core or PowerShell

#PowerShell has many types of commands
# + native executables
# + cmdlets
# + functions
# + scripts
# + ailiases

# A cmdlet is a compiled command / can be developed 
# - in .NET or .NET Core and  is invoked as a command
# - within PowerShell. 

# cmdlets named according to a verb-noun naming 
# - standard

# Can get list of approved verbs with Get-Verb cmdlet

# Get-Command lists all available cmdlets

# Get-Member used to parse object returned by command

# Get-Command -Verb Get: Lists all Get commands

# Get-Command -Noun List : Lists all commands with 
# - List as the noun

# help alias pipes Get-Help into a function that 
# - ensures output is readable line by line
# - Also makes the response readable page by page

# Get-Member used to find out more about what is 
# - being returned from a commandlet

# Use "|" to pipe cmdlet

Get-Command -Noun File* | Get-Member

# First line of response for Get-Member is the 
# - type of object returned

# Select-Object cmdlet allows you to choose which
# - columns appear in response 
# - Expects either a comma-separated list of column
# - - names or a wildcard character (e.g. '*')

Get-Command -Verb Get | Get-Member | Select-Object Name,Definition

# Pipelines created by connecting cmdlets together

# Use Format-List -Property * to get all info from 
# - an object

# Filter Get-Member items by name using -Name 

Get-Process bash | Get-Member -Name S*

# Use Sort-Object to sort list. 

Get-Process | Sort-Object -Property Id

# Where-Object used to filter results 

Get-Process | Where-Object CPU -gt 1000 | Sort-Object CPU -Descending | Select-Object -First 3

# Filter first then format

# To run script, use . ./FileName.ps1






