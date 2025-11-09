# 🏠 Airbnb Clone Database – Seed Script

## 📖 Overview
This directory contains the **seed script** (`seed.sql`) for populating the Airbnb Clone database with realistic sample data.  
The dataset reflects typical Airbnb operations — multiple users (guests, hosts, and admins), properties, bookings, reviews, messages, and payment transactions.

---

## 🧱 Entities Populated
| Entity | Description |
|---------|-------------|
| **User** | Contains user information including roles (`guest`, `host`, `admin`). |
| **Property** | Represents listings created by hosts with key details like name, location, and price. |
| **Booking** | Stores reservation details linking users (guests) to properties. |
| **Payment** | Records payment information related to each booking. |
| **Review** | Captures guest feedback and ratings on properties. |
| **Message** | Stores communication between users (guests ↔ hosts). |

---

## ⚙️ Execution Instructions
### Using PostgreSQL CLI:
```bash
psql -U postgres -d airbnb_clone -f seed.sql
