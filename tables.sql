# Students table

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade FLOAT,
    enrollment_date DATE
);


====================================

# Courses table 

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    department VARCHAR(50),
    start_date DATE,
    end_date DATE,
    credits INT,
    syllabus TEXT
);

===================================
# teachers table

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    subject_taught VARCHAR(100),
    office_location VARCHAR(50)
);

=====================================
# IoT table

CREATE TABLE IoT_devices (
    device_id INT PRIMARY KEY,
    device_name VARCHAR(100),
    manufacturer VARCHAR(100),
    model VARCHAR(50),
    firmware_version VARCHAR(20),
    installation_date DATE,
    location VARCHAR(255),
    status ENUM('Active', 'Inactive', 'Under Maintenance'),
    data_format VARCHAR(50)
);

====================================
# VPA table 

CREATE TABLE VPA (
    VPA_id INT PRIMARY KEY,
    account_holder_name VARCHAR(100),
    bank_name VARCHAR(100),
    account_number VARCHAR(20),
    IFSC_code VARCHAR(20),
    balance DECIMAL(10, 2),
    last_transaction_date DATE,
    is_active BOOLEAN
);

=========================================

# Departments table 

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    head_of_department VARCHAR(100),
    location VARCHAR(255),
    budget DECIMAL(15, 2),
    creation_date DATE,
    contact_email VARCHAR(100)
);

====================================

# Insert Data 

-- Inserting sample data into the 'students' table
INSERT INTO students (student_id, first_name, last_name, age, grade, enrollment_date)
VALUES
    (1, 'John', 'Doe', 20, 85.5, '2022-09-01'),
    (2, 'Jane', 'Smith', 21, 90.2, '2022-08-15'),
    (3, 'Michael', 'Johnson', 19, 78.3, '2022-09-10'),
    (4, 'Emily', 'Davis', 22, 95.0, '2022-08-20'),
    (5, 'David', 'Clark', 20, 88.7, '2022-09-05');
