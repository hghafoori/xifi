create table employee_detail (
	id_ INTEGER not null primary key,
	userId INTEGER,
	employeeCode VARCHAR(75) null,
	designation VARCHAR(75) null,
	location VARCHAR(75) null,
	department VARCHAR(75) null,
	pfNumber VARCHAR(75) null,
	doj DATE null,
	bankAccount VARCHAR(75) null,
	panNumber VARCHAR(75) null
);

create table reimbursement_item (
	id_ INTEGER not null primary key,
	userReimbursementId INTEGER,
	billDate DATE null,
	description VARCHAR(75) null,
	billAmount INTEGER,
	billCategory VARCHAR(75) null,
	document BLOB
);

create table salary (
	id_ INTEGER not null primary key,
	userId INTEGER,
	salaryMonth INTEGER,
	salaryYear INTEGER,
	basic INTEGER,
	arrears INTEGER,
	others INTEGER,
	tds INTEGER,
	lta INTEGER,
	HRA INTEGER,
	specialAllowance INTEGER,
	attireAllowance INTEGER,
	foodAllowance INTEGER,
	educationCess INTEGER,
	pf INTEGER,
	epf INTEGER,
	laborWelfare INTEGER,
	mediclaim INTEGER,
	otherDeduction INTEGER
);

create table user_reimbursement (
	id_ INTEGER not null primary key,
	createDate DATE null,
	modifiedDate DATE null,
	userId INTEGER,
	description VARCHAR(75) null,
	status VARCHAR(75) null
);