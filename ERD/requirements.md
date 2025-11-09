# 🏠 Airbnb Database Design — Entity Relationship Diagram (ERD)

## 📘 About the Project
This project is part of the **ALX Airbnb Database Module**, focusing on **database design, normalization, schema creation, and data seeding**.  
It aims to simulate a real-world Airbnb-like database system that is scalable, efficient, and well-structured, emphasizing high standards of data modeling and SQL design.

---

## 🎯 Objective
To design and document a relational database schema for an Airbnb-like application by defining entities, attributes, relationships, and constraints using an Entity-Relationship Diagram (ERD).

---

## 🗃️ Entities and Attributes

### 🧑‍💻 **User**
| Attribute | Type | Constraints |
|------------|------|-------------|
| user_id | UUID | **Primary Key**, Indexed |
| first_name | VARCHAR | NOT NULL |
| last_name | VARCHAR | NOT NULL |
| email | VARCHAR | UNIQUE, NOT NULL |
| password_hash | VARCHAR | NOT NULL |
| phone_number | VARCHAR | NULL |
| role | ENUM('guest', 'host', 'admin') | NOT NULL |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |

---

### 🏡 **Property**
| Attribute | Type | Constraints |
|------------|------|-------------|
| property_id | UUID | **Primary Key**, Indexed |
| host_id | UUID | **Foreign Key →** User(user_id) |
| name | VARCHAR | NOT NULL |
| description | TEXT | NOT NULL |
| location | VARCHAR | NOT NULL |
| price_per_night | DECIMAL | NOT NULL |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |
| updated_at | TIMESTAMP | ON UPDATE CURRENT_TIMESTAMP |

---

### 📅 **Booking**
| Attribute | Type | Constraints |
|------------|------|-------------|
| booking_id | UUID | **Primary Key**, Indexed |
| property_id | UUID | **Foreign Key →** Property(property_id) |
| user_id | UUID | **Foreign Key →** User(user_id) |
| start_date | DATE | NOT NULL |
| end_date | DATE | NOT NULL |
| total_price | DECIMAL | NOT NULL |
| status | ENUM('pending', 'confirmed', 'canceled') | NOT NULL |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |

---

### 💳 **Payment**
| Attribute | Type | Constraints |
|------------|------|-------------|
| payment_id | UUID | **Primary Key**, Indexed |
| booking_id | UUID | **Foreign Key →** Booking(booking_id) |
| amount | DECIMAL | NOT NULL |
| payment_date | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |
| payment_method | ENUM('credit_card', 'paypal', 'stripe') | NOT NULL |

---

### ⭐ **Review**
| Attribute | Type | Constraints |
|------------|------|-------------|
| review_id | UUID | **Primary Key**, Indexed |
| property_id | UUID | **Foreign Key →** Property(property_id) |
| user_id | UUID | **Foreign Key →** User(user_id) |
| rating | INTEGER | CHECK (rating BETWEEN 1 AND 5), NOT NULL |
| comment | TEXT | NOT NULL |
| created_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |

---

### 💬 **Message**
| Attribute | Type | Constraints |
|------------|------|-------------|
| message_id | UUID | **Primary Key**, Indexed |
| sender_id | UUID | **Foreign Key →** User(user_id) |
| recipient_id | UUID | **Foreign Key →** User(user_id) |
| message_body | TEXT | NOT NULL |
| sent_at | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |

---

## 🔗 Relationships Between Entities

| Relationship | Type | Description |
|---------------|------|-------------|
| **User → Property** | 1 : N | A host (User) can create multiple Properties. |
| **User → Booking** | 1 : N | A guest (User) can make multiple Bookings. |
| **Property → Booking** | 1 : N | Each Property can have multiple Bookings. |
| **Booking → Payment** | 1 : 1 | Each Booking has exactly one Payment. |
| **User → Review** | 1 : N | A User can write multiple Reviews. |
| **Property → Review** | 1 : N | A Property can have multiple Reviews. |
| **User → Message (Sender)** | 1 : N | A User can send multiple Messages. |
| **Message → User (Recipient)** | N : 1 | Each Message is received by a User. |

---

## 🧩 ER Diagram

Below is the visual representation of the Airbnb database schema showing all entities, attributes, and relationships:

![Airbnb ER Diagram](./A_Entity-Relationship_Diagram_(ERD)_in_the_image_i.png)

---

## 🧱 Summary
The Airbnb ERD captures all major data relationships within the system:
- Users can act as hosts or guests.  
- Properties belong to hosts.  
- Guests can book properties and make payments.  
- Users can leave reviews and exchange messages.  

This model ensures **data integrity, scalability, and efficient querying** for real-world use cases, forming the foundation for schema creation and SQL scripting in the subsequent project tasks.
