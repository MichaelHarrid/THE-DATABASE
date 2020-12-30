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
***Student table*** - is responsible for data storage on student’s name and last name as well as details and status.<br/>
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

# Functional Dependency Diagram (FDD) </br>

Functional Dependency Diagram (FDD) is a constraint that determines the relation of one attribute to another attribute in a Database Management System (DBMS). Functional Dependency helps to maintain the quality of data in the database. It plays a vital role to find the difference between good and bad database design.

![](file/img/FDD.png) </br></br>

 The diagram shows that each tables had undergone normalization removing all dependencies that can cause anomalies. </br>
 
# Complex Queries associated with the database </br>

### Here are a list of queries with their sample output from the DBRMS: </br>

### Query 1 </br>
The purpose of the **SQL UNION query** is to combine the results of two queries together while removing duplicates. In other words, when using UNION, only unique values returned. </br> </br>
**UNION query** is important for us so that we can easily unite any SELECT we will use and easier searching with multiple DATA. </br>

![](file/img/union.PNG) </br>

### Result:  </br>
![](file/img/union1.PNG) </br>



### Query 2 </br>
The purpose of the **SQL UNION ALL** command is to combine the results of two queries together without removing any duplicates. </br></br>

**UNION ALL** is an important query which we can combine two queries together and to know all of the data you unite. </br>

![](file/img/unionAll.PNG) </br>

### Result:  </br>
![](file/img/unionAll2.PNG) </br>

### Query 3 </br>
**Inline View**, nested within the FROM clause is referred as Inline View or Derived Table. </br></br>

**Inline view** sometimes referred to as derived table. These two terms are used interchangeably. </br>

![](file/img/unionAll.PNG) </br>

### Result:  </br>
![](file/img/unionAll2.PNG) </br>
### Query 4 </br>
The **INTERSECT command in SQL** combines the results of two SQL statement and returns only data that are present in both SQL statements. </br></br>
**INTERSECT command** in SQL so that we will know the difference between the two data we compared. </br>

![](file/img/intersect.PNG) </br>

### Result:  </br>
![](file/img/intersect1.PNG) </br>


### Query 5 </br>
The **MINUS or EXCEPT command** operates on two SQL statements. It takes all the results from the first SQL statement, and then subtract out the ones that are present in the second SQL statement to get the final result set. If the second SQL statement includes results not present in the first SQL statement, such results are ignored. </br></br>

**MINUS or EXCEPT command** is important so that we will know the difference from the first data we compared from the second data.</br>

![](file/img/except.PNG) </br>

### Result:  </br>
![](file/img/except1.PNG) </br>


### Query 6 </br>
The **LIMIT **clause restricts the number of results returned from a SQL statement. It is available in MySQL. </br></br>

**LIMIT **clause is important for us to make sure how many data we will get or gather. </br>

![](file/img/limit.PNG) </br>

### Result:  </br>
![](file/img/limit1.PNG) </br>

### Query 7 </br>

The usage of** WITH clause** is very similar to creating tables. When you create a table, you give it a name. Similarly, when you use the WITH clause, you also give it a name, and this name essentially acts like a table name in the main SQL statement. </br></br>
**WITH clause**does not create a table or a view, the object associated with the WITH statement disappears after the main SQL statement is executed, and there is nothing to clean up. </br>

![](file/img/with.PNG) </br>

### Result:  </br>
![](file/img/with1.PNG) </br>

### Query 8 </br>
**EXISTS** is a Boolean operator used in a subquery to test whether the inner query returns any row. If it does, then the outer query proceeds. If not, the outer query does not execute, and the entire SQL statement returns nothing. </br></br>

**EXISTS** is important on our database so that we can easily compute or analyze big data. The formula will execute according to the inner query. </br>

![](file/img/exists.PNG) </br>

### Result:  </br>
![](file/img/exists1.PNG) </br>

### Query 9 </br>

**CASE** is used to provide if-then-else type of logic to SQL. There are two formats: The first is a Simple CASE expression, where we compare an expression to static values. The second is a Searched CASE expression, where we compare an expression to one or more logical conditions.</br></br>
It is very important since we are always using if-then-else statement; it is a practical query especially for those people who are used to database.</br>

![](file/img/case.PNG) </br>

### Result:  </br>
![](file/img/case1.PNG) </br>

### Query 10 </br>

The **CAST** function in SQL converts data from one data type to another. For example, we can use the CAST function to convert numeric data into character string data. </br> </br>

This important since there are some numbers on our data that has point and we need to have an integer not a float. </br>

![](file/img/cast.PNG) </br>

### Result:  </br>
![](file/img/cast1.PNG) </br>

### Quer 11 <br>

The **CONVERT function** in MySQL and SQL Server converts data from one data type to another. </br> </br>
It is important since there are some data, that are float or it has point on it and we need to round off those data like grades.</br>
![](file/img/convert.PNG) </br>

### Result:  </br>
![](file/img/convert1.PNG) </br>

### Query 12 </br>
The **Concatenate** function combines multiple character strings together. Each database provides its own way(s) to do this. </br> </br>
It is important to **Concatenate** since there are some data that is separated and we need to combine it. </br>

![](file/img/concatenate.PNG) </br>

### Result:  </br>
![](file/img/concatenate1.PNG) </br>

### Query 13 </br>
The **INSTR** function in SQL is used to find the starting location of a pattern in a string. This function is available in MySQL and Oracle, though they have slightly different syntaxes. </br> </br>

To check on what area is the desired data to find, it will be use on locating data and to check how many data will counted. </br>

![](file/img/instr.PNG) </br>

### Result:  </br>
![](file/img/instr1.PNG) </br>

### Query 14 </br>
The **Replace function in SQL** is used to update the content of a string. The function call is REPLACE( ) for MySQL, Oracle, and SQL Server. </br> </br>

It is important since there are some data that we need to change if we forget something or we need to update. </br>

![](file/img/replace.PNG) </br>

### Result:  </br>
![](file/img/replace1.PNG) </br>

### Query 15 </br>
The **AVG function** is use to find the average value in an expression. </br> </br>
It is important to check the total average of some data, for example the total grade of your student. </br>

![](file/img/avg.PNG) </br>

### Result:  </br>
![](file/img/avg1.PNG) </br>

### Query 16 </br>

The **COUNT function** in SQL is used to calculate the number of rows returned from the SQL statement. </br> </br>
This is important because there are some time that we need to get the total data we place on a table. </br>

![](file/img/count.PNG) </br>

### Result:  </br>
![](file/img/count1.PNG) </br>
### Query 17 </br>

The **MAX function** is used to find the maximum value in an expression. </br> </br>
It is important since we need to know the total amount or value of the desired data. </br>

![](file/img/max.PNG) </br>

### Result:  </br>
![](file/img/max1.PNG) </br>

### Query 18 </br>

To add a column to a table using SQL, we specify that we want to change the table structure via the **ALTER TABLE command**, followed by the ADD command to tell the RDBMS that we want to add a column. </br> </br>

It is very important especially if we forgot a column on our table, ALTER TABLE will add another column automatically. </br> 

### Result: </br>
![](file/img/alterAdd.PNG) </br>

### Query 19 </br>

**Change Column** is not used in traditional RDBMS such as MySQL, Oracle, and SQL Server. In those environments, you can change the name of a column using the **ALTER TABLE RENAME COLUMN** command, and you can change the data type of a column using the ALTER TABLE MODIFY COLUMN comnmand. </br> </br>

It is important if the data we collected is not connected with the column name we input, so we can change it using the** ALTER TABLE MODIFY COLUMN.**

### Result: </br>
![](file/img/alterModify.PNG) </br>


### Query 20 </br>

**ALTER TABLE command**, followed by a specification indicating that we want to **remove a column**. </br> </br>

Sometimes we will wish to delete a column from an existing table in SQL. To do this, we specify that we want to change the table structure via the ALTER TABLE command, followed by a specification indicating that we want to remove a column. </br>
### Result: </br>
![](file/img/alterRemove.PNG) </br>

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 

 
