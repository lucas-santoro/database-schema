# 🗂️ TaskManager - Database Schema

This repository contains the SQL schema for a task management system. It defines the core relational structure used to store users and their corresponding tasks.

Designed for educational purposes and lightweight applications, this schema provides a solid foundation for backend development, data modeling, and CRUD-based systems.

---

## 📦 Database Overview

The schema includes two relational tables with appropriate constraints, default values, and sample records.

### 🧑‍💼 Table: `users`

| Column      | Type         | Description                          |
|-------------|--------------|--------------------------------------|
| `id`        | SERIAL       | Primary key                          |
| `name`      | VARCHAR(100) | Full name of the user                |
| `email`     | VARCHAR(150) | Unique email address                 |
| `password`  | TEXT         | Encrypted user password              |
| `created_at`| TIMESTAMP    | Automatically set on creation        |
| `nickname`  | VARCHAR(50)  | Unique nickname                      |

### ✅ Table: `tasks`

| Column       | Type         | Description                                 |
|--------------|--------------|---------------------------------------------|
| `id`         | SERIAL       | Primary key                                 |
| `title`      | VARCHAR(255) | Task title                                  |
| `description`| TEXT         | Optional task details                       |
| `status`     | VARCHAR(20)  | Status of the task (default: `pending`)     |
| `created_at` | TIMESTAMP    | Automatically set on creation               |
| `user_id`    | INTEGER      | Foreign key referencing `users(id)`         |
| `priority`   | INTEGER      | Task priority (default: `1`)                |

---

## 💾 Sample Data

The script includes 3 example records for each table to help with testing and demonstration:

```sql
-- Example Users
Lucas Santoro
Gabriel Barbosa
João Pedro

-- Example Tasks
Finish homework (linked to Lucas)
Review pull requests (linked to Gabriel)
Update documentation (linked to João)
