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

```
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
```

---

## ▶️ How to Run

### Give execute permission
```bash
chmod +x main.sh
```

### Run script (requires root)
```bash
sudo ./main.sh
```

---

## 📜 Menu Options

1. Create User
2. Delete User
3. List Users
4. Backup Directory
5. Exit

---

## 📝 Logging System

All actions are stored in:

```
logs/script.log
```

Example log entries:
```
2026-05-10 12:30:45 : User created: testuser
2026-05-10 12:32:10 : User deleted: testuser
2026-05-10 12:35:00 : Backup completed: /home/user/documents
```

---

## 🔧 Technologies Used
- Bash Shell Scripting
- Linux System Commands
- User Management (useradd, userdel)
- tar & gzip compression
- Logging system design
- Modular scripting

---

## 🧠 Learning Outcomes
- Linux user management fundamentals
- Bash scripting structure and logic
- Real-world DevOps automation patterns
- Logging and monitoring systems
- Safe system operation design
- Modular scripting practices

---

## 🔮 Future Improvements
- Cron-based automatic backups
- Email notifications for backup status
- Encrypted backups
- Role-based user management
- GUI version (optional advanced)

---

## 👨‍💻 Author
Saeed Asif  
LinkedIn: https://www.linkedin.com/in/saeedasif-devops/

---

## ⚠️ Disclaimer
This tool performs system-level operations. Use carefully and only in controlled environments or virtual machines.

