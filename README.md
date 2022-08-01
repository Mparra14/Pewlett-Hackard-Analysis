# Pewlett-Hackard-Analysis
## Overview:

In this project we were given thousands of  date from a company, Pewlett-Hackard,on their employees. Unfortunately, their older employees are soon to be retiring, and it was our job to find how many are retiring, and how many job position will need to be filled. Due to the number of retirees it became worrisome for the company to have that many suddenly leave, they terming this event as the "Silver Tsunami". In order for us to find us to find this information, we were given the year of births that corresponds to the employees that will retire.The employees that are retiring from the company were born in the years of 1952-1955, we were able to use all the data from CSV spreadsheets and narrow down the amount of retirees and their positions using SQL to create new tables that convey the information needed from the company.

## Results:

* The amount of retirees that will leave will be approximately over 72,000. This can be seen in the retiring title table shown below. 

![unique_titles_img](https://github.com/Mparra14/Pewlett-Hackard-Analysis/blob/main/unique_titles.png)

* The titles that are held by upcoming retirees that will be the most affected are the senior engineers and senior staff members, as both of these roles will lose 50,842 employees combined. This can be seen in the table below. 

![retiring_titles_img](https://github.com/Mparra14/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png)

* The least affected role in this "Silver Tsunami" is the Manager roles, as there are only two employees who hold that role and will retire.This can also be seen in the table above. 
* The amount of eligible mentors are only 1549 employees. These are the "newest" employees of the company and that will be mentored by the retirees. This can be seen in the table below.

![mentorship_eligibility_img](Mentor_eligibility.png)

# Analysis:
As the "Silver Tsunami' takes place there will about 72,480 roles that will need to be filled, these are roles that will be left empty if there are no new hires. Looking at the the data and the amount of employees in this company, we would need more information about the workload of each employee. These roles are not unique, there are thousands of employees with the same title; having said that there are more employees that will not be retiring, and have the same company titles. It just comes down to the workload that the company will like to impose on each worker. Would the employees that are not retiring want to take the retirees workload? if so, they would need to do a minimal hiring process. It would just depend on the dynamics that each title requires, if each employee has their own project/clients that need to be taken care of, then there will have to be a massive hiring process for a smooth transition. (Please see below for company title count for employees that are not retiring).

 ![non_retirees]()
 
 When it comes to mentorship, we can see that there are only 1549 employees that would qualify for this. This would mean that each qualified employee that shares a title with a retiree, would be able to get a mentor. There are more than enough retirees that would be able to mentor each employee that corresponds to their role. You can see the table below for titles for the mentorship qualified employees and you can compare it to the retiree titles. 
 
 ![mentorship_titles](https://github.com/Mparra14/Pewlett-Hackard-Analysis/blob/main/Mentors_per_title.png)
 ![retiring_titles_img](https://github.com/Mparra14/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png)
 

