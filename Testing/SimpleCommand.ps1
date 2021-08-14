$FilteredFiles = Get-ChildItem -Path C:\Users\Anthony\Documents\Phone\Downloads | Where-Object -Property LastWriteTime -GT -Value "1/1/2021" #| Select-Object FileName,Extension,LastWriteTime

Class MyFileData
{
    [String]$FileName
    [String]$Extension
    [datetime]$LastWriteTime
    [bool]$IsPdf
    [String]$Array
}

$MyData = @()
$TestArray = @("John Smith","Jack Johnson","John Jackson","Mary Sue","Jane Doe","Some Asshole")
foreach ($element in $FilteredFiles){
    $Datum = New-Object MyFileData
    $Datum.FileName = $element.Name
    $Datum.Extension = $element.Extension
    $Datum.LastWriteTime = $element.LastWriteTime
    $Datum.IsPdf = $element.Extension -eq ".pdf"
    
    $testString = ""
    for ($i = 0 ; $i -lt $TestArray.Count ; $i++){
        $testString += $TestArray[$i]
        
    }

    $Datum.Array = $testString
    $MyData += $Datum
}

$MyData | Export-Csv ".\Test.csv" -NoTypeInformation

# Some Notes:
# Use @() to create empty array
# Use $() to create empty variable (such as a string)