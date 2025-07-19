
# 🧰 PC Troubleshooting Toolkit (PowerShell)

A compact, menu-driven PowerShell utility designed for **Tier 1 IT Support Technicians** to streamline common desktop troubleshooting tasks. Runs locally on Windows 10/11 and generates real-time logs to aid support documentation and ticket triage.

---

## 🔧 Toolkit Features & Visual Walkthrough

Each feature includes a live screenshot and outcome summary to showcase real execution and practical value.

### 🖼️ 1. Restart Print Spooler
![Restart Print Spooler](assets/PrinterSpooler.png)  
Resolves printer job stuck issues by restarting the spooler service.

---

### 🌐 2. DNS Flush
![DNS Flush](assets/DNSFlush.png)  
Clears DNS cache to fix domain resolution problems.

---

### 📶 3. Internet Connectivity Check
![Internet Check](assets/Internetcheck.png)  
Pings common addresses to test live internet status.

---

### 🛑 4. Kill Command
![Kill Command](assets/Killcommand.png)  
Forces app or service termination — useful in freeze scenarios.

---

### 🔄 5. Windows Update Log Access
![Update Log](assets/WindowsUpdateLog.png)  
Displays recent Windows Update activity for troubleshooting.

---

## 🧾 Sample Log Output

Here’s a sample `.log` entry from Option 5 (Windows Update):

```
[07/18/2025 14:22:01] No pending updates found
[07/18/2025 14:22:03] Clean shutdown of update agents
[07/18/2025 14:22:04] End of Windows Update check
```

Highlights:
- No pending updates found  
- Clean shutdown of update agents  
- Timestamped entries for ticket validation and audit trail  

---

## 📁 Project Structure

```
PC-Troubleshooting-Toolkit/
├── Toolkit.ps1           # Main script
├── toolkit.log           # Execution log output
├── assets/               # Screenshots and banner images
└── README.md             # This file
```

---

## 🚀 How to Use

1. Open PowerShell as **Administrator**  
2. Navigate to the script directory  
3. Run the toolkit:

```powershell
.\Toolkit.ps1
```

4. Choose actions using number keys  
5. View results inline and in `toolkit.log`

---

## ✅ Requirements

- Windows 10 or 11  
- PowerShell 5.x or newer  
- Admin rights (required for some features)  
- Internet connection (for connectivity test)

---

## ✍️ Author

**Shawn C. Sutton**  
📍 Remote IT Support Candidate  
🎓 CourseCareers IT Track *(In Progress)*  
🧠 CompTIA A+ *(Studying for 2026)*  
🔗 [GitHub Portfolio](#)

---

