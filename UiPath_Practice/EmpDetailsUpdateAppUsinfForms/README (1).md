
# UiPah Form Integration with Microsoft sql server database

Created form which will show information of particular user based on ID and then from the form we can update that field values and store updated values back into database


## Installation

Installation of package for form activities

```UiPath.Form.Activities
We have to install the version 2.0.3 of uipath.form.activities which is older version for form activities for this demo  

The Microsoft sql server management studio also need to installed in system to perfom database operation
```
    
## Acknowledgements
This is link of documentation where activities for old and new packages are mentioned, can refer this
https://docs.uipath.com/activities/other/latest/workflow/about-the-form-activities-pack


## Database
Used Microsoft SQL server management studio for Database

This is table structure :
create table EmployeeDetails (
 Id int not null IDENTITY(1,1),
 EMP_ID int not null,
FirstName varchar(255) not null,
LastName varchar(255) not null,
Age int not null,
primary key(Id));

Here the Id is kept auto increment starting from one incremented by 1 every time for new entry
Also Id kept as primary key so it cannot be null or duplicate
## Demo

Insert gif or link to demo


## Documentation

This is demo for Entering value into field of form and after clicking on submit store that values into the database table.

steps:
1. In the Employee_ID_Input workflow I am using field key value of emp-id and passing that out of worklow in another workflow using invoke workflow activity
2. In updating_Data_Form ,establish the connection to database using connect to database activity .
3. use Run query activity for fetching data from database table into datatable variable.
use following query for that:
"select * from EmployeeDetails where EMP_ID=@EMP_ID"
here value coming from  Employee_ID_Input workflow arguent to  @Emp_ID var is name given to In argument.
4. iterate throgh each value in result of run query and store value is differnt field
5. create one more for to fetch data into field and use run query to update the values .
here I have used argument type as IN/OUT because I am fetching value into form also getting updated values from the form
the update query is given as follow
"UPDATE EmployeeDetails SET  FirstName=@FirstName ,LastName = @LastName,Age=@Age,EMP_ID=@EMP_ID" 



## Appendix

Any additional information goes here


## Running Tests

To run tests, run the following command

```bash
  npm run test
```

