# **Tables normalization to 3NF**. 
---

### 1. **User Table**
- **Primary Key:** `user_id`.
- Attributes: All attributes depend directly on `user_id` (e.g., `first_name`, `last_name`, `email`).
- **Analysis:** No partial or transitive dependencies. Already in 3NF.



### 2. **Property Table**
- **Primary Key:** `property_id`.
- **Foreign Key:** `host_id` (references `User(user_id)`).
- Attributes: `name`, `description`, `location`, `pricepernight`, etc., depend directly on `property_id`.
- **Analysis:** No partial or transitive dependencies. Already in 3NF.



### 3. **Booking Table**
- **Primary Key:** `booking_id`.
- **Foreign Keys:** 
  - `property_id` (references `Property(property_id)`).
  - `user_id` (references `User(user_id)`).
- Attributes: `start_date`, `end_date`, `total_price`, etc., depend directly on `booking_id`.
- **Analysis:** No partial or transitive dependencies. Already in 3NF.



### 4. **Payment Table**
- **Primary Key:** `payment_id`.
- **Foreign Key:** `booking_id` (references `Booking(booking_id)`).
- Attributes: `amount`, `payment_date`, `payment_method`, etc., depend directly on `payment_id`.
- **Analysis:** No partial or transitive dependencies. Already in 3NF.



### 5. **Review Table**
- **Primary Key:** `review_id`.
- **Foreign Keys:** 
  - `property_id` (references `Property(property_id)`).
  - `user_id` (references `User(user_id)`).
- Attributes: `rating`, `comment`, etc., depend directly on `review_id`.
- **Analysis:** No partial or transitive dependencies. Already in 3NF.



### 6. **Message Table**
- **Primary Key:** `message_id`.
- **Foreign Keys:** 
  - `sender_id` (references `User(user_id)`).
  - `recipient_id` (references `User(user_id)`).
- Attributes: `message_body`, `sent_at`, etc., depend directly on `message_id`.
- **Analysis:** No partial or transitive dependencies. Already in 3NF.


All tables are in **3NF** because:
- Every attribute is fully functionally dependent on the primary key of its table.
- There are no transitive dependencies in any table.
- Foreign keys correctly handle relationships without introducing redundancy or dependency issues.

