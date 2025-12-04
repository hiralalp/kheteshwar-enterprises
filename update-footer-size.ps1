# Update footer company name size across all HTML files

$workspaceRoot = "c:\Workspace\websites\kheteshwar-enterprises\kheteshwar-enterprises"
$htmlFiles = Get-ChildItem -Path $workspaceRoot -Filter "*.html" -File

Write-Host "Updating footer company name size..." -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Yellow
    
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $originalContent = $content
    
    # Update footer company name from display-5 to h3 for better sizing
    $content = $content -replace '<h1 class="display-5 text-primary">KHETESHWAR ENTERPRISES</h1>', '<h3 class="text-primary mb-3" style="font-size: 1.75rem; font-weight: 600;">KHETESHWAR ENTERPRISES</h3>'
    
    if ($content -ne $originalContent) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  Updated successfully" -ForegroundColor Green
    } else {
        Write-Host "  - No changes needed" -ForegroundColor Gray
    }
}

Write-Host "================================" -ForegroundColor Green
Write-Host "Footer size update completed!" -ForegroundColor Green
