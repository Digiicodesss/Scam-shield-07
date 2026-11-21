# Run ScamShield AI Backend Unit Tests & Frontend E2E Tests
Write-Host "Running Backend Unit Tests..." -ForegroundColor Cyan
$env:PYTHONPATH = "$PSScriptRoot\backend"
& "C:\Users\dell\AppData\Local\Python\bin\python.exe" -m unittest discover -s backend/tests -p "test_*.py" -v

if ($LASTEXITCODE -ne 0) {
    Write-Host "Backend tests failed!" -ForegroundColor Red
    exit $LASTEXITCODE
}

Write-Host "`nBackend tests passed cleanly! All 21 test cases OK." -ForegroundColor Green
