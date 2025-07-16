# Week 10 SQL Case Study

This case study demonstrates safe and structured SQL CRUD operations using MySQL Workbench and a fictional database called `ProjectManagerDB`.

## ✅ Overview

We implemented and tested three basic SQL queries:
- CREATE: Insert a new user
- READ: Select comments for a project with JOIN
- UPDATE: Change user role

All queries follow best practices: no `SELECT *`, and parameters are used to prevent SQL injection.

## 🧱 Schema

The schema includes 3 tables:
- `users`
- `projects`
- `comments`

Each table is connected via foreign keys.

## 📁 Files

- `queries.sql` – Contains all SQL queries using safe practices
- `screenshots/` – Contains:
  - `create_query.png`
  - `read_query.png`
  - `update_query.png`
  - `comments_insert.png`
  - `project_insert.png`
  - `tables_create.png`
  - `database_create.png`

## 📸 Screenshots

Include execution screenshots:
- ✅ User added
- ✅ Comments retrieved
- ✅ User promoted to admin

## 🔗 GitHub

GitHub Repo: [https://github.com/wissgupta/week10-sql-crud.git]

## 👨‍💻 Author

Tarun Gupta  
C0932284 – Full Stack Software Development  
Lambton College  
July 2025
