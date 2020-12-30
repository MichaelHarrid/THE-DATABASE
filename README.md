# THE-DATABASE
### GOAL 
Document your knowledge in Database. Show your advance SQL skill in showing complex information using simple queries. This can be handy as you move forward in your tech journey; you can always go back to this document whenever you feel uncertain or forget some techniques. This will also give insight to your future employer showing your base knowledge in SQL.
### DATABASE Documentation
## The Database

Student Management System is a database as well as a website where the student can check the status on his school. The student can easily check his financial status on how much is the remaining balance. Student subjects that are enrolled also subjects that not enrolled. The database can also check the students address if the student is at high-risk area or at lockdown. The Database made in a reason due to Covid19 in a practical way.  It is operated in a RDBMS (Relational Database Management System) called MySQL using the PhpMyAdmin platform.

### Entity Relationship Diagram (ERD)

ER diagram of the Student Management System shows the connection between entities and relationship of each table. The database created to make sure the capabilities of the database and to know how it works, in addition to show the simplicity of the user interface. </br>

The following markers used in the ERD defined as: </br>
- PK –Primary Key only
- FK- Foreign key only </br>

![](file/img/ERD.png) </br>

### The following tools that helped to create the database are the following:
[Lucid Chart Diagram tools] (https://online.visual-paradigm.com/)  [Mackaroo Mockup data] (https://lucid.app/) </br>

The data used on the database was get on this website [Mackaroo Mockup data] (https://lucid.app/).

### Table name and description
***Student table*** - is responsible for data storage on student’s name and last name as well as details and status.</br>
**Admin’s table** - is responsible for data storage on admin’s name and last name as well as details and status.</br>
**Address table** – is responsible for data storage on student and admin’s address.</br>
**IATF’s table** - is responsible for data storage on student and admin’s address status if it is high-risk, lockdown or not.</br>
**Quarantine table** - is responsible for data storage on student and admin’s health if he or she has Covid19.</br>
**Registrar table** - is responsible for data storage on student’s school requirements as well as the course and year.</br>
**Subjects table** - is responsible for data storage on student’s subjects.</br>
**Course table** - is responsible for data storage on student’s course.</br>
**Details table** - is responsible for data storage on student and admin’s details that includes personal email and phone number.</br>
**Status table** - is responsible for data storage on student’s status that includes if he or she is regular student, Student Assistant or scholarship from the government.</br>
**sa table** - is responsible for data storage if the student is a Student assistant or not and to check what department she is if she is a S.A.</br>
**Cashier table** - is responsible for data storage on student’s financial status, to check one’s balance.</br>
**Auto pay table** - is responsible for data storage if the student enrolled with auto pay or not, if she enrolled then the school will automatically deduct the balance using the card or checking account in file.</br></br>

# Functional Dependency Diagram (FDD)
Functional Dependency Diagram (FDD) is a constraint that determines the relation of one attribute to another attribute in a Database Management System (DBMS). Functional Dependency helps to maintain the quality of data in the database. It plays a vital role to find the difference between good and bad database design.



 ### Query 5 </br>
  The **MINUS or EXCEPT command** operates on two SQL statements. It takes all the results from the first SQL statement, and then subtract out the ones that are present in the second SQL statement to get the final result set. If the second SQL statement includes results not present in the first SQL statement, such results are ignored. </br>

 **MINUS or EXCEPT command** is important so that we will know the difference from the first data we compared from the second data. </br>
 
 ![](file/img/except.PNG) </br>
 
 ### Result:
 ![](file/img/except1.PNG) </br>
 
