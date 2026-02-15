# Academic Attendance Management System

## Overview
This project implements a relational database system for managing academic attendance in a university environment.

The system supports:
- Student enrollment
- Course-slot allocation
- Lecture logging
- Attendance tracking
- Attendance correction requests
- Administrative approvals
- Audit logging of changes
- Attendance reporting

---

## Database Design Features

- Proper normalization (up to 3NF)
- Use of primary and foreign key constraints
- Many-to-many relationship modeling using bridge tables (Enrollment)
- Composite foreign keys for referential integrity
- Audit logging for administrative actions
- View for attendance reporting

---

## Core Tables

- `member`
- `student`
- `admin`
- `department`
- `course`
- `courseslot`
- `enrollment`
- `lecturelog`
- `attendance`
- `attendance_request`
- `notification`
- `audit_log`

---

## Constraints & Integrity

- Attendance can only be recorded for enrolled students.
- Attendance requests are linked to valid attendance records.
- Deletion rules are enforced using ON DELETE CASCADE / RESTRICT where appropriate.
- Audit log maintains history of modifications.

---


   ```bash
   mysql -u root -p database_name < final_dump.sql
