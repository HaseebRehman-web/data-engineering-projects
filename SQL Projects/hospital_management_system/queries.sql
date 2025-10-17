-- total appointments per doctor
select d.name, count(a.appointment_id) as total_appointments
from doctors d
left join appointments a on d.doctor_id = a.doctor_id
group by d.name;
-- total revenue per doctor
select d.name, sum(b.amount) as total_revenue
from doctors d
join appointments a on d.doctor_id = a.doctor_id
join billing b on a.appointment_id = b.appointment_id
group by d.name;

-- list of unpaid bills
select p.name as patient_name, b.amount
from billing b
join appointments a on b.appointment_id = a.appointment_id
join patients p on a.patient_id = p.patient_id
where b.payment_status = 'Unpaid';
