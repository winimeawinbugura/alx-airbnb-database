# 🏠 ALX Airbnb Database — Schema Design (DDL)

## 📚 Overview
This directory contains the **Database Definition Language (DDL)** scripts for creating the Airbnb-like relational database.  
It defines tables, constraints, and indexes to ensure data consistency, integrity, and high performance.

---

## 🎯 Objectives
- Define all entities (Users, Properties, Bookings, Payments, Reviews, Messages)
- Enforce **primary and foreign key** constraints
- Apply **data validation** using CHECK constraints
- Use **indexes** for optimization and faster queries
- Ensure full compliance with **3rd Normal Form (3NF)**

---

## 🧱 Database Entities

| Table | Description |
|--------|--------------|
| **Users** | Stores information about hosts, guests, and admins. |
| **Properties** | Contains property listings uploaded by hosts. |
| **Bookings** | Records guest reservations and booking details. |
| **Payments** | Logs payment transactions for bookings. |
| **Reviews** | Holds guest feedback and ratings for properties. |
| **Messages** | Enables communication between users (guests and hosts). |

---

## ⚙️ Schema Features
- **Primary Keys:** Ensure entity uniqueness.  
- **Foreign Keys:** Maintain referential integrity across related entities.  
- **CHECK Constraints:** Enforce logical validation rules.  
- **Indexes:** Improve query performance (e.g., search by property, booking, or user).  
- **Timestamps:** Automatically record creation times.

---

## 🧩 Relationships
- One **User** (host) → Many **Properties**
- One **Property** → Many **Bookings**
- One **Booking** → One **Payment**
- One **User** (guest) → Many **Bookings**
- One **User** ↔ One **User** (Messaging system)
- One **Property** → Many **Reviews**

---

## 🚀 How to Run

### 1️⃣ Create Database
```sql
CREATE DATABASE airbnb_clone;
