insert into doctors (name, specialization, contact)
values
('Dr. Ahmad Ali', 'Cardiology', '0300-1234567'),
('Dr. Sara Khan', 'Dermatology', '0311-7654321'),
('Dr. Bilal Raza', 'Orthopedic', '0322-9876543');

insert into patients (name, gender, dob, contact)
values
('Ali Rehman', 'M', '1990-05-14', '0301-1111111'),
('Fatima Tariq', 'F', '1995-08-21', '0302-2222222'),
('Hassan Shahid', 'M', '1988-11-30', '0303-3333333');
insert into appointments (patient_id, doctor_id, appointment_date, status)
values
(1, 1, '2025-10-05', 'Completed'),
(2, 2, '2025-10-06', 'Pending'),
(3, 1, '2025-10-07', 'Completed');
insert into billing (appointment_id, amount, payment_status)
values
(1, 2000.00, 'Paid'),
(2, 1500.00, 'Unpaid'),
(3, 2500.00, 'Paid');
