# 🐧 User Management & Backup Automation System

## 📌 Project Overview

This is a Linux-based **Bash automation project** that simulates real-world DevOps system administration tasks. It provides a menu-driven CLI tool for managing Linux users and performing automated directory backups with logging and safety controls.

The project is designed for **DevOps beginners** to learn:

* Linux system administration
* Bash scripting
* Automation workflows
* Logging and monitoring
* Safe system operations

---

## 🚀 Features

### 👤 User Management Module

* Create Linux users
* Delete users safely
* Validate user existence
* Prevent deletion of root user
* Set user passwords (future extension)
* Error handling for invalid operations

### 💾 Backup Module

* Backup any directory
* Compress backups using `.tar.gz`
* Timestamped backup files
* Validate directory existence before backup

### ⚙️ Automation Features

* Menu-driven CLI interface
* Centralized logging system (`logs/script.log`)
* Input validation and error handling
* Modular script structure

### 🔐 Safety & DevOps Practices

* Root/sudo validation
* Confirmation before destructive actions
* Exit status checking (`$?`)
* Defensive scripting principles

---

## 📁 Project Structure

```text
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

### 1. Give execute permission

```bash
chmod +x main.sh
```

### 2. Run the script (requires root)

```bash
sudo ./main.sh
```

---

## 📜 Menu Options

When you run the script:

```
1. Create User
2. Delete User
3. List Users
4. Backup Directory
5. Exit
```

---

## 🧪 Example Usage

### Create User

```
Enter username: testuser
```

### Delete User

```
Enter username: testuser
Are you sure? (y/n)
```

### Backup Directory

```
Enter directory path: /home/user/documents
```

---

## 📝 Logging System

All actions are logged in:

```
logs/script.log
```

Example log:

```
2026-05-10 12:30:45 : User created: testuser
2026-05-10 12:32:10 : User deleted: testuser
```

---

## 🔧 Technologies Used

* Bash Shell Scripting
* Linux Commands
* System Administration tools
* Cron (future extension)
* tar/gzip for compression

---

## 🧠 Learning Outcomes

By building this project, you learn:

* Linux user management fundamentals
* Bash scripting structure and logic
* Real-world DevOps automation patterns
* Logging and monitoring basics
* Safe system operation design
* Modular scripting practices

---

## 🔮 Future Improvements

* Add cron-based automatic backups
* Email notifications for backup status
* Encrypted backups
* Role-based user management
* GUI version (optional)


## 👨‍💻 Author

Saeed Asif
LinkedIn: [https://www.linkedin.com/in/saeedasif433445/]

---

## ⚠️ Disclaimer

This tool performs system-level operations. Use carefully and only in controlled environments or virtual machines.
