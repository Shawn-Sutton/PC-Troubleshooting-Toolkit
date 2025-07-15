function Pause-Script {
    Write-Host ""
    Read-Host "Press Enter to return to menu"
}

function Show-Menu {
    Clear-Host
    Write-Host "=== PC Troubleshooting Toolkit ===" -ForegroundColor Cyan
    Write-Host "1. Flush DNS Cache"
    Write-Host "2. Restart Print Spooler"
    Write-Host "3. Check Internet Connection"
    Write-Host "4. Kill a Stuck Program"
    Write-Host "5. View Windows Update Log"
    Write-Host "6. Exit"
    Write-Host ""
}

function Timestamp {
    return Get-Date -Format "yyyy-MM-dd HH:mm:ss"
}

do {
    Show-Menu
    $choice = Read-Host "Select an option (1-6)"

    switch ($choice) {
        "1" {
            Write-Host "[$(Timestamp)] Flushing DNS cache..." -ForegroundColor Yellow
            ipconfig /flushdns
            Pause-Script
        }

        "2" {
            Write-Host "[$(Timestamp)] Restarting Print Spooler..." -ForegroundColor Yellow
            Restart-Service spooler -Force
            Write-Host "[$(Timestamp)] Print Spooler restarted." -ForegroundColor Green
            Pause-Script
        }

        "3" {
            Write-Host "[$(Timestamp)] Checking internet access..." -ForegroundColor Yellow
            try {
                $response = Invoke-WebRequest -Uri "https://www.google.com" -UseBasicParsing -TimeoutSec 5
                if ($response.StatusCode -eq 200) {
                    Write-Host "[$(Timestamp)] Internet connection appears to be working." -ForegroundColor Green
                }
            } catch {
                Write-Host "[$(Timestamp)] Internet connection failed." -ForegroundColor Red
            }
            Pause-Script
        }

        "4" {
            $proc = Read-Host "Enter the program name (e.g. chrome, notepad)"
            try {
                Stop-Process -Name $proc -Force -ErrorAction Stop
                Write-Host "[$(Timestamp)] $proc closed successfully." -ForegroundColor Green
            } catch {
                Write-Host "[$(Timestamp)] Failed to close $proc. It might not be running or permission is denied." -ForegroundColor Red
            }
            Pause-Script
        }

        "5" {
            Write-Host "[$(Timestamp)] Getting Windows Update log..." -ForegroundColor Yellow
            try {
                Get-WindowsUpdateLog
                Write-Host "[$(Timestamp)] Log generation complete. Check C:\Windows\WindowsUpdate.log" -ForegroundColor Green
            } catch {
                Write-Host "[$(Timestamp)] Failed to retrieve Windows Update log." -ForegroundColor Red
            }
            Pause-Script
        }

        "6" {
            Write-Host "[$(Timestamp)] Exiting Toolkit. Stay productive!" -ForegroundColor Green
        }

        default {
            Write-Host "[$(Timestamp)] Invalid choice. Please enter 1 to 6." -ForegroundColor Red
            Pause-Script
        }
    }
} while ($choice -ne "6")
