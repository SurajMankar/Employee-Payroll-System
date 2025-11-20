
INSERT INTO departments (dept_name) VALUES
('HR'),
('Finance'),
('IT'),
('Operations'),
('Sales'),
('Marketing'),
('Admin'),
('Support'),
('Legal'),
('Procurement');



INSERT INTO employees (first_name, last_name, dept_id, join_date, base_salary) VALUES
('Rahul','Sharma',3,'2022-01-10',40000),
('Sneha','Patil',2,'2023-03-20',35000),
('Amit','Kumar',1,'2021-11-15',30000),
('Priya','Verma',4,'2020-07-01',32000),
('Vikas','Singh',5,'2019-09-12',28000),
('Anita','Desai',3,'2024-02-05',42000),
('Rohit','Joshi',6,'2021-06-22',26000),
('Meera','Iyer',7,'2022-10-30',31000),
('Karan','Mehta',8,'2023-05-05',33000),
('Pooja','Rane',9,'2024-01-10',36000);




INSERT INTO salary_structure (emp_id,hra,da,pf,bonus) VALUES
(1,8000,5000,3000,4000),
(2,7000,4000,2500,3000),
(3,6000,3500,1500,2000),
(4,6500,3600,1800,2500),
(5,4500,2800,1600,1200),
(6,9000,5500,3200,4500),
(7,3500,2000,1200,1000),
(8,5000,3000,1700,1300),
(9,4800,3100,1600,1100),
(10,7000,4200,2100,3100);




INSERT INTO attendance (emp_id, att_date, status) VALUES
(1,'2025-01-01','Present'),
(2,'2025-01-01','Present'),
(3,'2025-01-01','Absent'),
(4,'2025-01-01','Present'),
(5,'2025-01-01','Leave'),
(6,'2025-01-01','Present'),
(7,'2025-01-01','Absent'),
(8,'2025-01-01','Present'),
(9,'2025-01-01','Present'),
(10,'2025-01-01','Present');
