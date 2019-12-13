
CREATE TABLE departments (
    dept_no varchar(30)   NOT NULL,
    dept_name varchar(30)   NOT NULL,
    PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE dept_emp (
    emp_no integer   NOT NULL,
    dept_no varchar(30)   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL,
    PRIMARY KEY (
        emp_no,dept_no
     )
);

CREATE TABLE dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no integer   NOT NULL,    
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL,
    PRIMARY KEY (
        emp_no,dept_no
     )
);

CREATE TABLE employees (
    emp_no integer   NOT NULL,
    birth_date varchar(30)   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date varchar(30)   NOT NULL,
    PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE salaries (
    emp_no integer   NOT NULL,
    salary integer   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL,
    PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE titles (
    emp_no integer   NOT NULL,
    title varchar(30)   NOT NULL,
    from_date varchar(30)   NOT NULL,
    to_date varchar(30)   NOT NULL,
    PRIMARY KEY (
        emp_no,from_date
     )
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE titles ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

