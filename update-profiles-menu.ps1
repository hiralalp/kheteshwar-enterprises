# Update all HTML files to add Stainless Steel Profiles to the products dropdown menu
$files = Get-ChildItem -Path "." -Filter "*.html" -File

$updateCount = 0

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Add the profiles link after the grills link in the dropdown menu
    $oldPattern = '(\s*)<a href="ramdev-grills\.html" class="dropdown-item">Stainless Steel Grills</a>'
    $newPattern = '$1<a href="ramdev-grills.html" class="dropdown-item">Stainless Steel Grills</a>' + "`r`n" + '$1<a href="ss-profiles.html" class="dropdown-item">Stainless Steel Profiles</a>'
    
    if ($content -match $oldPattern -and $content -notmatch 'ss-profiles\.html') {
        $newContent = $content -replace $oldPattern, $newPattern
        Set-Content -Path $file.FullName -Value $newContent -Encoding UTF8 -NoNewline
        Write-Host "Updated: $($file.Name)"
        $updateCount++
    }
}

Write-Host "`nTotal files updated: $updateCount"
