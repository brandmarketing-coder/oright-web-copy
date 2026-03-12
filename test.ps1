$dir = 'c:\Users\oright\Desktop\官網重塑文案'
Write-Host "Dir: $dir"
$files = Get-ChildItem $dir -Filter "*.md"
Write-Host "Count: $($files.Count)"
$files | ForEach-Object { Write-Host $_.Name }
