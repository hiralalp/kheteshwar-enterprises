# Phase 3: Update copyright section

$workspaceRoot = "c:\Workspace\websites\kheteshwar-enterprises\kheteshwar-enterprises"
$htmlFiles = Get-ChildItem -Path $workspaceRoot -Filter "*.html" -File

Write-Host "Phase 3: Updating copyright sections..." -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Yellow
    
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $originalContent = $content
    
    # Update copyright text
    $content = $content -replace "All right reserved Ramdev Steel\s*Industries", "All right reserved KHETESHWAR ENTERPRISES"
    
    if ($content -ne $originalContent) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  Updated successfully" -ForegroundColor Green
    } else {
        Write-Host "  - No changes needed" -ForegroundColor Gray
    }
}

Write-Host "================================" -ForegroundColor Green
Write-Host "Phase 3 update completed!" -ForegroundColor Green
