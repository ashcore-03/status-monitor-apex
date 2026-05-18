# -----------------------------
# FILE PATHS
# -----------------------------

$folder = "C:\Users\hp\OneDrive\Desktop\Projects\Apex\StatusMonitor"

$json3 = "$folder\3.json"
$json1 = "$folder\1.json"
$json4 = "$folder\4.json"

# -----------------------------
# API URLS
# -----------------------------

$lotstatusUrl = "https://apex.oracle.com/ords/ashwave/extrusion/lotstatus"
$metricsUrl   = "https://apex.oracle.com/ords/ashwave/extrusion/metrics"

# -----------------------------
# SEND 3.JSON TO LOTSTATUS
# -----------------------------

Invoke-RestMethod `
    -Uri $lotstatusUrl `
    -Method POST `
    -ContentType "application/json" `
    -InFile $json3

Write-Host "3.json uploaded successfully"

# -----------------------------
# MERGE 1.JSON + 4.JSON
# -----------------------------

$json1Content = Get-Content $json1 -Raw | ConvertFrom-Json
$json4Content = Get-Content $json4 -Raw | ConvertFrom-Json

$merged = @()

foreach ($item in $json4Content) {

    $obj = [PSCustomObject]@{
        ITEM      = $item.ITEM
        TDAY_A    = $item.TDAY_A
        TDAY_B    = $item.TDAY_B
        TDAY_C    = $item.TDAY_C
        TDAY      = $item.TDAY
        CUM_TDAY  = $item.CUM_TDAY
        YDAY_A    = $item.YDAY_A
        YDAY_B    = $item.YDAY_B
        YDAY_C    = $item.YDAY_C
        YDAY      = $item.YDAY
        CUM_YDAY  = $item.CUM_YDAY
    }

    $merged += $obj
}

$tempFile = "$folder\merged.json"

$merged | ConvertTo-Json | Out-File $tempFile

# -----------------------------
# SEND MERGED.JSON TO METRICS
# -----------------------------

Invoke-RestMethod `
    -Uri $metricsUrl `
    -Method POST `
    -ContentType "application/json" `
    -InFile $tempFile

Write-Host "merged.json uploaded successfully"
