🧰 PC Troubleshooting Toolkit (PowerShell)
A compact, menu-driven PowerShell utility designed for Tier 1 IT Support Technicians to streamline common desktop troubleshooting tasks. Runs locally on Windows 10/11 and generates real-time logs to aid support documentation and ticket triage.

🔧 Toolkit Features & Visual Walkthrough
Each option is paired with a real execution screenshot and action summary to give recruiters and users a clear understanding of the tool's workflow.

Option	Task	Visual & Description
1️⃣	Flush DNS Cache	<br>Clears stale DNS records to fix domain resolution errors and improve network response.
2️⃣	Restart Print Spooler	<br>Restarts the spooler service to resolve stuck print jobs or offline printer statuses.
3️⃣	Check Internet Connection	<br>Performs ping tests to identify connectivity issues and isolate local vs. WAN problems.
4️⃣	Force-close Stuck Apps	<br>Ends frozen applications to restore system responsiveness and clear user sessions.
5️⃣	Review Windows Update Logs	<br>Displays recent update activities and agent logs for troubleshooting failed patches.
6️⃣	Exit Tool with Logging	(No screenshot)<br>Gracefully exits while appending timestamped entries to toolkit.log for documentation.
All tasks write status output to toolkit.log for session tracking and reproducibility — useful for follow-ups and knowledge base creation.

📋 Log File Example
Here’s a sample .log output from the Windows Update inspection task:


🧠 Key Insights:

No pending updates identified

Clean shutdown sequence of update agents and services

Entries timestamped for support documentation and ticket validation

📁 File Structure
PC-Troubleshooting-Toolkit/
├── Toolkit.ps1           # Main script
├── toolkit.log           # Log file created at runtime
├── assets/               # Screenshots and banner images
└── README.md             # Documentation file (this one)
🚀 How to Use
Launch PowerShell as Administrator

Navigate to this directory

Run the tool:

powershell
.\Toolkit.ps1
Use number keys to select tasks — output appears inline and in the log file

✅ Requirements
Windows 10 or Windows 11

PowerShell 5.x or higher

Admin privileges required for spooler control, log access, and app termination

Internet connection (for Option 3 testing)

✍️ Author
Shawn C. Sutton 📍 Remote IT Support Candidate | CourseCareers Grad | CompTIA A+ (In Progress) 🔗 GitHub Portfolio
