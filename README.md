# Pewlett-Hackard-Analysis
using data modeling, engineering and analysis skills to build an employee database with SQL 

## Overview of the analysis 
The purpose of this project was to perform employee research analysis for the company Pewlett Hackard. The company was previously making use of other software to store employee information but decided to update their methods to start using SQL instead. The main aim of the project was to help in the creation of a new employee database while applying data modeling, engineering and analysis skills including but not limited to creating queries, building tables and also importing and exporting data files.

## Results

- The retirement titles tables shows is the first table that is created to help with this analysis, it gathers information from two of the original csv files (Employees and Titles) which both contain information about all the employees of the company and the titles they have held while at the company. We are interested in gathering the information for the employees born between the years 1952 and 1955 as they are those of retirement age. The table shows that there were a huge number of employees of retirement age but it wasn't too specific as it included both employees that had already left the company and several others who had held various positions throughout their stay and so the data was further streamlined to help with the analysis

![Unique Titles Table](https://github.com/SNwokolo/Pewlett-Hackard-Analysis/blob/445a2be4579e407160f5bd2a91fcab1155577219/Data/Unique%20titles.png)

- The unique table displayed above is created from the retiremennt titles one and gives us a better insight as to the specific information we are searching for. It shows the most recent titles held by the employees of retirement age that are still working at the company currently. It shows that there will be over 70,000 positions opening up in the case that these employees all begin to retire.

![Retiring Tiles Table](https://github.com/SNwokolo/Pewlett-Hackard-Analysis/blob/445a2be4579e407160f5bd2a91fcab1155577219/Data/Retiring%20titles.png)

- This table is further derived from the unique tables and provides a direct count of the current employees that are of retirement age in various titles within the company. The role of senior engineer has the highest amount employees that will be retiring at 25,916 closely followed by the senior staff role at 24,926 and the least of all the seven roles listed is the manager with only 2 positions being occupied by retiring employees.

![Mentorship Eligibility Table](https://github.com/SNwokolo/Pewlett-Hackard-Analysis/blob/445a2be4579e407160f5bd2a91fcab1155577219/Data/Mentorship%20eligibility.png)

The mentorship eligibility was created to show which of the current employees would be eligible for the company's mentorship program for new hires that are brought onboard to fill up the positions that would be opening up once the current employees start to retire. It specifically applies to those employees born in the year 1965 and shows their most recent titles held at the company. It combines data from three of the original data files provided - Employees, Department employee and Titles. The table shows that there are over 1500 employees eligible for this mentorship program across various departments in the company.

## Summary
- From the analysis conducted, when the "silver tsunami" begins to make an impact, there will be well over 70,000 positions(specifically 72,458) opening up to be filled by new hires.
- From the total amount of employees who are retirement-ready being 1549, in comparison to the 72,458 positions opening up within the company, it doesn't look like there will be enough qualified mentors available for training such a high amount of new employees. The table below also shows this is the case as it sorts the retirement-ready mentors by departments and when these numbers are compared with those in the retiring titles table, there are not enough mentors available for the mentorship program. 
![Mentorship titles Table](https://github.com/SNwokolo/Pewlett-Hackard-Analysis/blob/7e079801b7dd6e4b0d6d2304f5716706c2443cab/Data/ment%20titles.png)


![Mentor Dates](https://github.com/SNwokolo/Pewlett-Hackard-Analysis/blob/7e8c5c9f482a0b36a78ba30292c788ca84ebffcd/Data/ment_dates.png)

The table above is another one that can help in our analysis, it shows the hire dates of the retirement-ready employees aka the mentors. The longer the employee has worked for the company, the more knowledge on the ins and outs of the processes they have to provide and therefore, the better qualified these particular employees are to be the program mentors. I am of the opinion that these particular employees would be the best to lead the mentorship program in their various departments and also possibly be the best ones to select other employees (outside the retirement-ready age) to join in the program in order to increase the mentors available for the hiring process after the 'silver tsunami' begins.
