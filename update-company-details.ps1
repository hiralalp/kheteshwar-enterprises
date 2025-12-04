# PowerShell script to update company details across all HTML files

$workspaceRoot = "c:\Workspace\websites\kheteshwar-enterprises\kheteshwar-enterprises"
$htmlFiles = Get-ChildItem -Path $workspaceRoot -Filter "*.html" -File

Write-Host "Found $($htmlFiles.Count) HTML files to update" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

# Company name replacements
$replacements = @(
    @{
        Old = "Ramdev Steel Industries"
        New = "KHETESHWAR ENTERPRISES"
    },
    @{
        Old = "Shop No. 180, Sefi House, T.P. Street, 6th Kumhharwada, Mumbai 400004"
        New = "5th Floor, Office No. 502, Plot No. 119/121, Rajmudra, Bhandari Street, Durgadevi Udyan, Kumbharwada, Mumbai - 400004"
    },
    @{
        Old = "Harishbhai Dewasi - 90295 85033"
        New = "9967202660"
    },
    @{
        Old = "Harishbhai Dewasi - 98928 62579"
        New = "8291050903"
    },
    @{
        Old = "Navin Dewasi - 88787 28590"
        New = ""
    },
    @{
        Old = "Tel-022-67521222"
        New = ""
    },
    @{
        Old = "info@ramdevsteelindustries.com"
        New = "babulalpurohit3@gmail.com"
    },
    @{
        Old = "ramdevsteel.harish@gmail.com"
        New = ""
    },
    @{
        Old = "https://wa.me/919029585033"
        New = "https://wa.me/919967202660"
    },
    @{
        Old = "https://wa.me/9029585033"
        New = "https://wa.me/9967202660"
    }
)

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.Name)" -ForegroundColor Yellow
    
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $originalContent = $content
    
    foreach ($replacement in $replacements) {
        if ($replacement.New -eq "") {
            # For empty replacements, we'll remove the entire line
            $content = $content -replace [regex]::Escape("<p><i class=`"fa fa-phone-alt me-2`"></i>$($replacement.Old)</p>"), ""
            $content = $content -replace [regex]::Escape("<p><i class=`"fa fa-envelope me-2`"></i>$($replacement.Old)</p>"), ""
            $content = $content -replace [regex]::Escape("$($replacement.Old)"), ""
        } else {
            $content = $content -replace [regex]::Escape($replacement.Old), $replacement.New
        }
    }
    
    # Update manufacturing description
    $content = $content -replace "Ramdev Steel Industries manufactures all kinds of S\.S\. Handles, Railings, Safety Door Grill, Interior Fabrication, and provides all kinds of PVD & PU coatings for metal surfaces\.", "KHETESHWAR ENTERPRISES is a leading manufacturer and supplier of premium stainless steel products including Handles, Railings, Grills, Interior Fabrication, and specialized PVD & PU coating services."
    
    if ($content -ne $originalContent) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  Updated successfully" -ForegroundColor Green
    } else {
        Write-Host "  - No changes needed" -ForegroundColor Gray
    }
}

Write-Host "================================" -ForegroundColor Green
Write-Host "Company details update completed!" -ForegroundColor Green
