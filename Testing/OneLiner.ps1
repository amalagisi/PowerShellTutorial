Get-ChildItem -Path C:\Users\Anthony\Documents\Phone\Downloads `
| Where-Object -Property LastWriteTime -GT -Value "1/1/2021" `
| Select-Object Name,Extension,LastWriteTime `
| Export-Csv "TestOneLiner.csv" -NoTypeInformation `
