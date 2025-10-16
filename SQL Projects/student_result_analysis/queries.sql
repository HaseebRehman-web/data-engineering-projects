
select * from students;
select s.name, sub.subject_name, r.marks_obtained
from results r
join students s on r.student_id = s.student_id
join subjects sub on r.subject_id = sub.subject_id
where s.name = 'ali khan';

select sub.subject_name, avg(r.marks_obtained) as avg_marks
from results r
join subjects sub on r.subject_id = sub.subject_id
group by sub.subject_name;

select s.name, avg(r.marks_obtained) as avg_marks
from results r
join students s on r.student_id = s.student_id
group by s.name;

select s.name, sum(r.marks_obtained) as total_marks
from results r
join students s on r.student_id = s.student_id
group by s.name
order by total_marks desc
limit 3;

select 
s.name, 
sum(r.marks_obtained) as total_marks,
rank() over (order by sum(r.marks_obtained) desc) as rank_position
from results r
join students s on r.student_id = s.student_id
group by s.name;

create view student_report as
select 
s.student_id,
s.name,
s.class,
sum(r.marks_obtained) as total_marks,
avg(r.marks_obtained) as avg_marks
from results r
join students s on r.student_id = s.student_id
group by s.student_id, s.name, s.class;
select * from student_report;
