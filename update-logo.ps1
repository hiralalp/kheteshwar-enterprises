# Update logo path across all HTML files

$workspaceRoot = "c:\Workspace\websites\kheteshwar-enterprises\kheteshwar-enterprises"
$htmlFiles = Get-ChildItem -Path $workspaceRoot -Filter "*.html" -File

Write-Host "Updating logo paths..." -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Yellow
    
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $originalContent = $content
    
    # Update all references to the old logo
    $content = $content -replace 'img/Ramdev Steel Industries logo\.jpg', 'img/KElogo.png'
    $content = $content -replace 'img/KHETESHWAR ENTERPRISES logo\.jpg', 'img/KElogo.png'
    $content = $content -replace '\./img/Ramdev Steel Industries logo\.jpg', './img/KElogo.png'
    $content = $content -replace '\./img/KHETESHWAR ENTERPRISES logo\.jpg', './img/KElogo.png'
    
    if ($content -ne $originalContent) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  Updated successfully" -ForegroundColor Green
    } else {
        Write-Host "  - No changes needed" -ForegroundColor Gray
    }
}

Write-Host "================================" -ForegroundColor Green
Write-Host "Logo update completed!" -ForegroundColor Green
