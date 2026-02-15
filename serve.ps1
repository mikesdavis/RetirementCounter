$ErrorActionPreference = 'Stop'
$root = Join-Path $PSScriptRoot '_site'
$prefix = 'http://localhost:4000/'
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($prefix)
$listener.Start()
Write-Host "Serving $root at $prefix"
try {
  while ($listener.IsListening) {
    $context = $listener.GetContext()
    $req = $context.Request
    $path = [System.Uri]::UnescapeDataString($req.Url.AbsolutePath.TrimStart('/'))
    if ($path -eq '') { $path = 'index.html' }
    $file = Join-Path $root $path
    if (!(Test-Path $file) -or (Get-Item $file).PSIsContainer) {
      $file = Join-Path $root 'index.html'
    }
    try {
      $bytes = [System.IO.File]::ReadAllBytes($file)
      $ext = [System.IO.Path]::GetExtension($file).ToLower()
      $mime = switch ($ext) {
        '.html' { 'text/html' }
        '.htm'  { 'text/html' }
        '.css'  { 'text/css' }
        '.js'   { 'application/javascript' }
        '.png'  { 'image/png' }
        '.jpg'  { 'image/jpeg' }
        '.jpeg' { 'image/jpeg' }
        '.svg'  { 'image/svg+xml' }
        '.json' { 'application/json' }
        default { 'application/octet-stream' }
      }
      $context.Response.AddHeader('Content-Type', $mime)
      $context.Response.ContentLength64 = $bytes.Length
      $context.Response.OutputStream.Write($bytes, 0, $bytes.Length)
      $context.Response.OutputStream.Close()
    } catch {
      $context.Response.StatusCode = 404
      $context.Response.OutputStream.Close()
    }
  }
} finally {
  if ($listener -and $listener.IsListening) { $listener.Stop(); $listener.Close() }
}
