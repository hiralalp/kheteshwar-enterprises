# Phase 2: Additional company details updates

$workspaceRoot = "c:\Workspace\websites\kheteshwar-enterprises\kheteshwar-enterprises"
$htmlFiles = Get-ChildItem -Path $workspaceRoot -Filter "*.html" -File

Write-Host "Phase 2: Updating remaining company details..." -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Yellow
    
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $originalContent = $content
    
    # Update address in footer
    $content = $content -replace "Shop No\. 180, Sefi House, T\.P\. Street, 6th Kumhharwada,\s*Mumbai 400004", "5th Floor, Office No. 502, Plot No. 119/121, Rajmudra, Bhandari Street, Durgadevi Udyan, Kumbharwada, Mumbai - 400004"
    
    # Update descriptions
    $content = $content -replace "KHETESHWAR ENTERPRISES manufactures all kinds of S\.S\. Handles", "KHETESHWAR ENTERPRISES is a leading manufacturer and supplier of premium stainless steel products including Handles"
    
    # Update contact page specific sections
    $content = $content -replace "Harishbhai Dewasi: 90295 85033<br>Harishbhai Dewasi: 98928 62579<br>Navin Dewasi: 88787 28590<br>Tel: 022-67521222", "9967202660 / 8291050903"
    
    # Update email section in contact page
    $content = $content -replace "info@ramdevsteelindustries\.com<br>ramdevsteel\.harish@gmail\.com", "babulalpurohit3@gmail.com"
    
    # Clean up empty lines from removed contacts
    $content = $content -replace "(\s*<p><i class=`"fa fa-phone-alt me-2`"></i></p>\s*)", ""
    $content = $content -replace "(\s*<p><i class=`"fa fa-envelope me-2`"></i></p>\s*)", ""
    
    if ($content -ne $originalContent) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  Updated successfully" -ForegroundColor Green
    } else {
        Write-Host "  - No changes needed" -ForegroundColor Gray
    }
}

Write-Host "================================" -ForegroundColor Green
Write-Host "Phase 2 update completed!" -ForegroundColor Green
