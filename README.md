# 🐧 User Management & Backup Automation System

## 📌 Project Overview

This project is a Linux-based **Bash automation system** that simulates real-world DevOps system administration tasks. It provides a menu-driven CLI tool for managing Linux users and performing automated directory backups with logging, validation, and safety controls.

It is designed for **DevOps beginners** to practice:
- Linux system administration
- Bash scripting
- Automation workflows
- Logging & monitoring systems
- Safe system operations design
- Modular scripting architecture

---

## 🚀 Features

### 👤 User Management Module
- Create Linux users
- Delete users safely
- Validate user existence before operations
- Prevent deletion of root user
- Handle errors and invalid inputs

### 💾 Backup Module
- Backup any directory
- Compress backups using `.tar.gz`
- Timestamped backup files
- Validate directory existence before backup

### ⚙️ Automation Features
- Menu-driven CLI interface
- Centralized logging system (`logs/script.log`)
- Input validation and error handling
- Modular script design

### 🔐 Safety & DevOps Practices
- Root/sudo validation before execution
- Confirmation before destructive actions
- Exit status checking (`$?`)
- Defensive scripting principles

---

## 🧩 Architecture (Module Design)

### System Flow

User Input (CLI Menu)
        ↓
main.sh (Controller)
        ↓
Module Functions
        ↓
System Operations (User/Backup)
        ↓
Logs stored in logs/script.log

---

### Modules

- main.sh → CLI interface & controller
- modules/user_mgmt.sh → user operations
- modules/backup.sh → backup operations
- logs/ → system logs

---

## 📁 Project Structure

user-management-backup-system/
│
├── main.sh
├── modules/
│   ├── user_mgmt.sh
│   └── backup.sh
│
├── logs/
│   └── script.log
│
├── backups/
│
└── README.md

---

## ▶️ How to Run

### Give permission
```bash
chmod +x main.sh
Run script (requires root)
sudo ./main.sh
📜 Menu Options
Create User
Delete User
List Users
Backup Directory
Exit
📝 Logging System

All actions are stored in:

logs/script.log

Example:
2026-05-10 12:30:45 : User created: testuser
2026-05-10 12:32:10 : User deleted: testuser

🔧 Technologies Used
Bash Scripting
Linux Commands
User Management Tools
tar & gzip compression
Logging system design
Modular scripting
🧠 Learning Outcomes
Linux user management
Bash scripting fundamentals
Automation thinking
Logging systems
Safe system design
Modular architecture
🔮 Future Improvements
Cron automation for backups
Email notifications
Encrypted backups
Role-based access system
GUI version (advanced)
👨‍💻 Author

Saeed Asif
LinkedIn: https://www.linkedin.com/in/saeedasif-devops/

⚠️ Disclaimer

Use only in test environments or virtual machines.
