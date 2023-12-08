
# UiPah Form Integration with Microsoft sql server database

A brief description of what this project does and who it's for


## Installation

Installation of package for form activities

```UiPath.Form.Activities
We have to install the version 2.0.3 which is older version for form activities for this demo because vidios on new activities has not there yet on youtube for reference 
```
    
## Acknowledgements
This is link of documentation where activities for old and new packages are mentioned, can refer this
https://docs.uipath.com/activities/other/latest/workflow/about-the-form-activities-pack


## Database
Used Microsoft SQL server management studio for Database

This is table structure :
create table Persons(
Id int not null IDENTITY(1,1),
FirstName varchar(255) not null,
LastName varchar(255) not null,
Age int not null,
primary key(Id)
);

Here the Id is kept auto increment starting from one incremented by 1 every time for new entry
Also Id kept as primary key so it cannot be null or duplicate
## Demo

Insert gif or link to demo


## Documentation

This is demo for Entering value into field of form and after clicking on submit store that values into the database table.

steps:
1. created empty databale with fields using build databale activity.
2. uses create form activity in open form designer created field as firstname ,lastname ,age .
3. inside form field collection pass the field key value in form as out argument and store into another variables.
4. added that variable value into datatable using add data row activity.
5. establish connection to ssms dtabase using connect to database activity.while configuring connection select data source: microsoft sql server , server name, select database.
6. use insert activity to insert record from form to database 
7. close the database connection using disconnect activity.


## Appendix

Any additional information goes here

