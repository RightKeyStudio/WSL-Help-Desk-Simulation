 🛠️ Linux Help Desk Simulation (WSL Mini-Lab)

This project simulates a real-world Tier 1+2 Linux Help Desk environment using Bash scripting, WSL (Windows Subsystem for Linux), and realistic troubleshooting workflows.

Each "ticket" models a typical IT issue faced by end users — such as disk space problems, failed backups, login issues, and permission errors. Solutions were written as `.sh` scripts, tested in a Linux terminal, and documented with screenshots.

---

   🗃️ Folder Structure

linux-helpdesk-sim/
├── tickets/ # Simulated Help Desk user reports
├── fixes/ # Shell scripts that solve each issue
├── screenshots/ # Terminal screenshots of before/after fixes
├── troubleshoot.sh # (Optional) General-purpose diagnostic script
└── README.md # This file

---

   ✅ Completed Tickets

| Ticket # | Issue | Script | Screenshot |
|----------|-------|--------|------------|
| 1 | 🧩 Failed backup | `ticket1_backup.sh` | `ticket1_failed_backup.png` |
| 2 | 🔒 Permission denied | `ticket2_permission.sh` | `ticket2_permission_error.png` |
| 3 | 💽 Disk full | `ticket3_disk.sh` | `ticket3_disk_usage_fix.png` |
| 4 | 🔐 User login issue | `ticket4_user.sh` | `ticket4_user_login_fix.png`, `ticket4_password_reset.png` |

---

## 💻 Skills Demonstrated

- **Linux Command Line**: `df`, `chmod`, `passwd`, `cat`, `grep`, `usermod`, `tail`, `du`, etc.
- **Shell Scripting**: Wrote scripts to fix issues and automate support
- **Simulated Incident Response**: Reproduced a real help desk workflow
- **Documentation**: Used text and screenshots to simulate full ticket resolution
- **Troubleshooting**: Recreated common system-level issues and resolved them independently

---

  🧠 Why It Matters

This project is designed to reflect the real responsibilities of an entry-level IT Support or Linux Admin role:

- Responding to real user reports
- Diagnosing issues from logs or command output
- Writing efficient shell scripts to resolve issues
- Confirming results with documentation

---

   📸 Example Screenshots

> Screenshots of all fixes are located in `/screenshots`.  
Each shows either the **problem state**, the **fix in action**, or the **confirmation** that the issue is resolved.

---

   📁 How to Use

1. Open WSL or any Linux terminal.
2. Navigate to `fixes/`
3. Run any fix script (e.g., `bash ticket3_disk.sh`) to simulate handling that ticket.
4. Read the original ticket in `/tickets` to understand what problem you're solving.

---

   📋 Sample Ticket (Example)

**ticket3_disk_full.txt**

Ticket ID: #003  
Issue: User reported disk full error - unable to save or update files.

Date: 2025-06-24  
Simulated by: RightKeyStudio (via WSL Ubuntu)




🛠️ Actions Taken:

1. Ran `df -h` - confirmed root partition usage was critically high
2. Used `sudo du -sh /*` to identify which directories were consuming the most space
3. Determined that `/var` was among the largest folders
4. Ran `sudo du -ah /var | sort -hr | head -n 20` to pinpoint the largest files inside `/var`
5. Did **not** remove files or clean system directories - analysis only



🧠 Outcome:
Diagnosis completed successfully. Disk usage confirmed and root cause identified (large files in `/var`), but no deletion or cleanup actions taken.



📋 Recommendation:
Next steps would involve safely cleaning large logs and running `sudo apt clean`, followed by verifying disk usage again with `df -h`.

✅ Status: Diagnostic complete - ready for cleanup or escalation.


📂 [View the fix → `ticket3_disk.sh`](fixes/ticket3_disk.sh)

📸 [See screenshot → `ticket3_disk_usage_fix.png`](screenshots/ticket3_disk_usage_fix.png)

---

