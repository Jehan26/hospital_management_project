USE hospital_management;

CREATE INDEX idx_doctor_specialization ON doctors(specialization);
CREATE INDEX idx_patient_dob ON patients(date_of_birth);
CREATE INDEX idx_visit_date ON visits(visit_date);
CREATE INDEX idx_bill_payment_status ON bills(payment_status);
