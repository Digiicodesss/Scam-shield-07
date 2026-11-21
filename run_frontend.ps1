# Start ScamShield AI Vite Frontend
$env:PATH = "$PSScriptRoot\.tools\nodejs;$env:PATH"
Set-Location "$PSScriptRoot\frontend"
Write-Host "Starting ScamShield AI Frontend on http://127.0.0.1:5173 ..." -ForegroundColor Cyan
npm run dev -- --host 127.0.0.1 --port 5173
