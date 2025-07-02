# PC Troubleshooting Toolkit - Clean Version

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

do {
    Show-Menu
    $choice = Read-Host "Select an option (1-6)"

    switch ($choice) {
        "1" {
            Write-Host "Flushing DNS cache..." -ForegroundColor Yellow
            ipconfig /flushdns
            Pause-Script
        }

        "2" {
            Write-Host "Restarting Print Spooler..." -ForegroundColor Yellow
            Restart-Service spooler -Force
            Write-Host "Print Spooler restarted."
            Pause-Script
        }

        "3" {
            Write-Host "Pinging 8.8.8.8 to check connection..." -ForegroundColor Yellow
            Test-Connection -ComputerName 8.8.8.8 -Count 4
            Pause-Script
        }

        "4" {
            $proc = Read-Host "Enter the program name (e.g. chrome, notepad)"
            Stop-Process -Name $proc -Force -ErrorAction SilentlyContinue
            Write-Host "$proc closed (if running)."
            Pause-Script
        }

        "5" {
            Write-Host "Getting Windows Update log..." -ForegroundColor Yellow
            Get-WindowsUpdateLog
            Pause-Script
        }

        "6" {
            Write-Host "Exiting Toolkit. Stay productive!" -ForegroundColor Green
        }

        default {
            Write-Host "Invalid choice. Please enter 1 to 6." -ForegroundColor Red
            Pause-Script
        }
    }
} while ($choice -ne "6")
