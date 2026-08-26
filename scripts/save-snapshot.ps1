[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $IndexFile,

    [string] $SnapshotDate = (Get-Date -Format 'yyyy-MM-dd'),

    [string] $OutputRoot = (Join-Path (Split-Path $PSScriptRoot -Parent) 'snapshots')
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $IndexFile -PathType Leaf)) {
    throw "Index file not found: $IndexFile"
}

$snapshotDirectory = Join-Path $OutputRoot $SnapshotDate
New-Item -ItemType Directory -Path $snapshotDirectory -Force | Out-Null

$urls = [regex]::Matches((Get-Content -LiteralPath $IndexFile -Raw), 'https?://[^\s>)]+') |
    ForEach-Object { $_.Value.TrimEnd('.', ',', ')') } |
    Select-Object -Unique

if ($urls.Count -eq 0) {
    throw "No URLs found in index file: $IndexFile"
}

function Get-SafeName([string] $url) {
    $uri = [Uri] $url
    $name = $uri.AbsolutePath.Trim('/') -replace '/', '-'
    if ([string]::IsNullOrWhiteSpace($name)) { $name = 'index' }
    return ($name -replace '[^a-zA-Z0-9._-]', '_')
}

function ConvertTo-ReadableText([string] $html) {
    $body = [regex]::Match($html, '(?is)<body[^>]*>(.*?)</body>').Groups[1].Value
    if ([string]::IsNullOrWhiteSpace($body)) { $body = $html }
    $text = $body -replace '(?is)<(script|style|noscript|svg)[^>]*>.*?</\1>', ''
    $text = $text -replace '(?i)<br\s*/?>', "`n"
    $text = $text -replace '(?i)</(p|div|section|article|h[1-6]|li|pre|tr)>', "`n"
    $text = $text -replace '(?i)<[^>]+>', ''
    $text = [System.Net.WebUtility]::HtmlDecode($text)
    $lines = $text -split "`r?`n" | ForEach-Object { $_.Trim() } | Where-Object { $_ }
    return (($lines -join "`n") + "`n")
}

$manifest = [System.Collections.Generic.List[object]]::new()
$webRequestParams = @{
    UseBasicParsing = $true
    Headers = @{ 'User-Agent' = 'VSCode-Agents-Doc-Archive/1.0' }
}

foreach ($url in $urls) {
    $name = Get-SafeName $url
    $htmlPath = Join-Path $snapshotDirectory "$name.html"
    $textPath = Join-Path $snapshotDirectory "$name.md"

    try {
            $response = Invoke-WebRequest -Uri $url @webRequestParams
            $html = $response.Content
            [System.IO.File]::WriteAllText($htmlPath, $html, [Text.UTF8Encoding]::new($false))
            [System.IO.File]::WriteAllText($textPath, (ConvertTo-ReadableText $html), [Text.UTF8Encoding]::new($false))
            $title = [regex]::Match($html, '(?is)<title[^>]*>(.*?)</title>').Groups[1].Value.Trim()
            $manifest.Add([pscustomobject]@{ url = $url; title = $title; html = "$name.html"; text = "$name.md"; savedAt = (Get-Date).ToString('o'); status = 'ok' })
            Write-Host "Saved: $url"
    }
    catch {
            $manifest.Add([pscustomobject]@{ url = $url; title = ''; html = ''; text = ''; savedAt = (Get-Date).ToString('o'); status = "error: $($_.Exception.Message)" })
            Write-Warning "Failed: $url - $($_.Exception.Message)"
    }
}

$manifest | ConvertTo-Json -Depth 3 | Set-Content -LiteralPath (Join-Path $snapshotDirectory 'manifest.json') -Encoding utf8
Write-Host "Snapshot complete: $snapshotDirectory"