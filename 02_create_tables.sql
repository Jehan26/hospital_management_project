USE hospital_management;

CREATE TABLE IF NOT EXISTS doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    salary DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    phone_number VARCHAR(15),
    address TEXT
);

CREATE TABLE IF NOT EXISTS visits (
    visit_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    visit_date DATE,
    diagnosis TEXT,
    prescription TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE IF NOT EXISTS bills (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    visit_id INT,
    consultation_fee DECIMAL(10,2),
    medicine_cost DECIMAL(10,2),
    other_charges DECIMAL(10,2),
    final_amount DECIMAL(10,2),
    payment_status ENUM('Paid', 'Unpaid'),
    FOREIGN KEY (visit_id) REFERENCES visits(visit_id)
);
