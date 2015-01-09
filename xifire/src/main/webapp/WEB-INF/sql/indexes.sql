create unique index IX_2177CA82 on employee_detail (userId);

create unique index IX_7B0CCB4A on salary (userId);
create unique index IX_7500F257 on salary (userId, salaryMonth, salaryYear);
create unique index IX_9BEF0225 on salary (userId, salaryYear);

create unique index IX_C7F5BCC4 on user_reimbursement (userId);