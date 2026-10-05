-- Sample data (fictional). Run after schema.sql.
USE hospital_db;

INSERT INTO departments (name) VALUES
('Cardiology'), ('Pediatrics'), ('Orthopedics'), ('Dermatology');

INSERT INTO doctors (full_name, department_id) VALUES
('Dr. Ahmed Ali', 1),
('Dr. Sara Hassan', 2),
('Dr. Omar Nabil', 3),
('Dr. Laila Adel', 1),
('Dr. Hany Fawzy', 4);

INSERT INTO patients (full_name, birth_date, phone) VALUES
('Mona Samir', '1990-05-12', '01000000001'),
('Omar Khaled', '1985-11-03', '01000000002'),
('Nour Ibrahim', '2015-03-21', '01000000003'),
('Youssef Hamed', '1972-08-30', '01000000004'),
('Salma Magdy', '1998-01-15', '01000000005'),
('Karim Sherif', '1965-12-09', '01000000006'),
('Hala Mostafa', '2010-07-04', '01000000007'),
('Tarek Zaki', '1980-02-27', '01000000008');

INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2026-10-10 10:00:00', 'Scheduled'),
(2, 2, '2026-10-11 12:30:00', 'Scheduled'),
(3, 2, '2026-10-12 09:00:00', 'Completed'),
(4, 1, '2026-10-12 11:00:00', 'Completed'),
(5, 5, '2026-10-13 13:00:00', 'Cancelled'),
(6, 4, '2026-10-14 10:30:00', 'Scheduled'),
(7, 2, '2026-10-14 15:00:00', 'Scheduled'),
(1, 3, '2026-10-15 09:30:00', 'Scheduled'),
(4, 4, '2026-10-16 12:00:00', 'Completed'),
(6, 1, '2026-10-17 14:00:00', 'Scheduled');
