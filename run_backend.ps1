# Start ScamShield AI FastAPI Backend
Write-Host "Starting ScamShield AI Backend on http://127.0.0.1:8000 ..." -ForegroundColor Cyan
& "C:\Users\dell\AppData\Local\Python\bin\python.exe" -m uvicorn app.main:app --app-dir "$PSScriptRoot\backend" --host 127.0.0.1 --port 8000 --reload
