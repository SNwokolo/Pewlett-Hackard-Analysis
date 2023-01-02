
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
INTO ret_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM ret_titles as rt
WHERE to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01')
	AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no ASC;

SELECT COUNT(me.emp_no), me.title
INTO ment_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;
	
SELECT DISTINCT ON (me.emp_no) me.emp_no,
me.first_name,
me.last_name,
me.from_date
--INTO unique_titles
FROM mentorship_eligibility as me
WHERE to_date = ('9999-01-01')
ORDER BY me.emp_no, me.from_date DESC;
