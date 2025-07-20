# hospital_management_project
# 🏥 Hospital Management Database

## 📌 Overview

A MySQL-based database system for managing patients, doctors, appointments, billing, and visit records. The system supports data-driven automation such as billing procedures, discharge triggers, and visit tracking.

---

## 🧱 Database Schema

The schema consists of the following key entities:

- **Patients**: Stores patient details
- **Doctors**: Stores doctor info and specializations
- **Visits**: Tracks patient visits, date, reason, and attending doctor
- **Bills**: Manages payments, visit charges, and status

---

## 🛠️ Tools Used

- MySQL 8.0
- DBeaver (for query management and ER modeling)
- dbdiagram.io (for ERD design)

---

## 📁 Project Structure
/hospital-management-db/
├── schema.sql # Table definitions
├── sample_data.sql # Sample patient, doctor, visit data
├── queries.sql # Appointment, visit, and payment queries
├── procedures.sql # Stored procedures for billing
├── triggers.sql # Triggers for discharge updates
├── reports.sql # Visit and billing summary queries
├── ERD.png # Entity Relationship Diagram
└── README.md # Project documentation

pgsql
Copy
Edit

---

## 🧪 Core Features

- Register patients and assign doctors
- Schedule and query appointments
- Automate billing calculations using stored procedures
- Update discharge status with triggers
- Generate visit history and payment summaries

---

## 🧠 Sample Queries

```sql
-- Upcoming appointments
SELECT p.Name, d.Name AS Doctor, v.VisitDate
FROM Visits v
JOIN Patients p ON v.PatientID = p.PatientID
JOIN Doctors d ON v.DoctorID = d.DoctorID
WHERE v.VisitDate >= CURDATE();

-- Total bill by patient
SELECT p.Name, SUM(b.Amount) AS TotalBill
FROM Bills b
JOIN Patients p ON b.PatientID = p.PatientID
GROUP BY p.Name;
