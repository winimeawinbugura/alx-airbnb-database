# 🧮 Airbnb Database Normalization

## 🎯 Objective
To apply **database normalization principles** to ensure the Airbnb database design is in **Third Normal Form (3NF)** — reducing redundancy, improving data integrity, and optimizing relational efficiency.

---

## 🏗️ Overview
Normalization is the process of organizing data in a database to:
- Eliminate redundant data.
- Ensure logical data dependencies.
- Improve data integrity and consistency.

The Airbnb database was reviewed across all normal forms (1NF → 3NF).  
The following explains the steps and adjustments applied.

---

## ⚙️ Step 1: First Normal Form (1NF)

**Rule:**  
- Each table must have a primary key.  
- Each attribute must contain atomic (indivisible) values.  
- There should be no repeating groups or arrays.

**✅ Actions Taken:**
- All tables (`User`, `Property`, `Booking`, `Payment`, `Review`, `Message`) have **primary keys**.
- No attribute contains multiple values — all are **atomic**.
- Repeating data (e.g., multiple emails, phone numbers, etc.) is avoided by allowing only one per user.

**🧾 Result:**  
All tables comply with **1NF**.

---

## ⚙️ Step 2: Second Normal Form (2NF)

**Rule:**  
- Must satisfy 1NF.  
- No **partial dependency** — i.e., non-key attributes must depend on the entire primary key (not just part of it).

**✅ Actions Taken:**
- All tables use **single-attribute primary keys** (UUIDs), so **partial dependencies cannot exist**.
- Composite keys are not used in this schema.
- Attributes such as `price_per_night`, `description`, and `role` depend fully on their respective table’s primary key.

**🧾 Result:**  
All tables comply with **2NF**.

---

## ⚙️ Step 3: Third Normal Form (3NF)

**Rule:**  
- Must satisfy 2NF.  
- No **transitive dependency** — non-key attributes must depend **only on the primary key**, not on another non-key attribute.

**✅ Actions Taken:**
- Verified that:
  - In `User`, attributes like `first_name`, `email`, and `role` depend only on `user_id`.
  - In `Property`, attributes depend only on `property_id` (and indirectly on `host_id` through a foreign key — not a transitive dependency).
  - In `Booking`, `total_price` depends on `booking_id` (calculated from related `Property` and `User` records, not stored redundantly).
  - In `Payment`, no attribute depends on another non-key field.
  - In `Review` and `Message`, attributes depend only on their own primary keys.

**🧾 Result:**  
All tables comply with **3NF**, with no transitive dependencies or redundant attributes.

---

## 🧱 Final Normalized Structure Summary

| Table | Primary Key | Key Dependencies | Normal Form |
|--------|--------------|------------------|--------------|
| **User** | user_id | All fields depend on user_id | ✅ 3NF |
| **Property** | property_id | All fields depend on property_id | ✅ 3NF |
| **Booking** | booking_id | All fields depend on booking_id | ✅ 3NF |
| **Payment** | payment_id | All fields depend on payment_id | ✅ 3NF |
| **Review** | review_id | All fields depend on review_id | ✅ 3NF |
| **Message** | message_id | All fields depend on message_id | ✅ 3NF |

---

## 🧩 Normalization Outcome

After normalization:
- **Redundancy** was minimized.  
- **Data integrity** and **consistency** improved.  
- **Referential constraints** between entities (via foreign keys) preserved logical relationships.  
- The design supports **scalable and efficient queries** for Airbnb-like operations.

---

## ✅ Summary

The Airbnb database design is successfully normalized up to **Third Normal Form (3NF)**.  
This ensures:
- Every attribute depends **only** on its table’s primary key.  
- There are **no duplicate or repeating data groups**.  
- The structure is **optimized for integrity, consistency, and performance**.

---

**Author:** Winime Awinbugur Azumah
**Repository:** [alx-airbnb-database](https://github.com/winimeawinbugura/alx-airbnb-database.git)  
**File:** `normalization.md`
