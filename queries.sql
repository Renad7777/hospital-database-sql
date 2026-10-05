-- Sample reporting queries. Run after schema.sql and data.sql.
USE hospital_db;

-- 1. Appointments for a specific doctor (WHERE)
SELECT * FROM appointments WHERE doctor_id = 1;

-- 2. Patient and doctor names for each appointment (JOIN)
SELECT p.full_name AS patient, d.full_name AS doctor, a.appointment_date, a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id
ORDER BY a.appointment_date;

-- 3. Number of appointments per department (GROUP BY)
SELECT dep.name AS department, COUNT(*) AS total_appointments
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
JOIN departments dep ON d.department_id = dep.department_id
GROUP BY dep.name
ORDER BY total_appointments DESC;

-- 4. Patients with no appointments (LEFT JOIN)
SELECT p.patient_id, p.full_name
FROM patients p
LEFT JOIN appointments a ON p.patient_id = a.patient_id
WHERE a.appointment_id IS NULL;

-- 5. Number of appointments by status (GROUP BY)
SELECT status, COUNT(*) AS total
FROM appointments
GROUP BY status;
