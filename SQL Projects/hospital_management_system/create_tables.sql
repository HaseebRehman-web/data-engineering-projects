create table patients (
  patient_id int auto_increment primary key,
  name varchar(50),
  gender char(1),
  dob date,
  contact varchar(15)
);
create table doctors (
  doctor_id int auto_increment primary key,
  name varchar(50),
  specialization varchar(50),
  contact varchar(15)
);
create table appointments (
  appointment_id int auto_increment primary key,
  patient_id int,
  doctor_id int,
  appointment_date date,
  status varchar(20),
  foreign key (patient_id) references patients(patient_id),
  foreign key (doctor_id) references doctors(doctor_id)
);
create table billing (
  bill_id int auto_increment primary key,
  appointment_id int,
  amount decimal(10,2),
  payment_status varchar(20),
  foreign key (appointment_id) references appointments(appointment_id)
);



