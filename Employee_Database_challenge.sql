SELECT em.emp_no,
	em.first_name,
	em.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS em
INNER JOIN titles AS ti
ON (em.emp_no= ti.emp_no)
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;
    
-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date='9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY Count DESC;

-- Mentorship Eligibility
SELECT DISTINCT ON (em.emp_no) em.emp_no,
	em.first_name,
	em.last_name,
	em.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees AS em
INNER JOIN dept_emp AS de
ON (em.emp_no=de.emp_no)
INNER JOIN titles AS ti
ON (em.emp_no=ti.emp_no)
WHERE de.to_date='9999-01-01'
	AND em.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY em.emp_no;

--Mentor count for each title 
Select COUNT (me.title), me.title
INTO qualified_mentor_employees
FROM mentorship_eligibilty AS me
GROUP BY me.title
ORDER BY Count DESC;

--
SELECT *
FROM employees
ORDER BY birth_date DESC;
-- Existing employees that can replace retirees
SELECT em.emp_no,
	em.first_name,
	em.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO replacement_titles
FROM employees AS em
INNER JOIN titles AS ti
ON (em.emp_no= ti.emp_no)
WHERE (em.birth_date BETWEEN '1956-01-01' AND '1965-12-31')
ORDER BY em.emp_no;

--unique values
SELECT DISTINCT ON (ret.emp_no) ret.emp_no,
ret.first_name,
ret.last_name,
ret.title
INTO unique_replacement_titles
FROM replacement_titles AS ret
WHERE (ret.to_date='9999-01-01')
ORDER BY ret.emp_no, ret.to_date DESC

--COUNT OF TITLES FOR REPLACEMENTS
SELECT COUNT (urt.title), urt.title
INTO future_promoted_titles
FROM unique_replacement_titles AS urt
GROUP BY urt.title
ORDER BY Count DESC;