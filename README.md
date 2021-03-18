# Covid-Vaccine-DataBase


## Objective

The goal of this project is to develop and build a database application for a real-world domain. Step-by-step, designing a schema, create a database using DB2, populate the database with data, maintain, query and update your data, develop application programs, and implement a user-friendly interface. 

## Creating a Data Model.

Creating a Data Model to connect every component of the proccess and obtain an efficient diagram which can later be implemented to form the full fledged data base. 

- The data model can be found in the `src/model/ER.pdf`
- Translation of the ER diagram as well as the assumptions and restrictions can be found in the `src/model/project.pdf`

## Creating a SQL database schema for the relational schema

Creating a SQL database schema for the relational scehma that was designed earlier. 
- The data model can be found in the `src/model/sql_files`
- To create Tables and Insert data, Please run the following files in order `src/model/sql_files/createtbl.sh` and `src/model/sql_files/loaddata.sh`
- To remove all the tables please run the following file: `src/model/sql_files/droptable.sh`

## Creating a backend for the database 
Creating a bakend for the relational scehma that was designed earlier in Java
- User selects the menu option based on what they would like to do, program performs that action and goes back to displaying the menu.
- Specific options for User include the following: <br>
  `VaccineApp Main Menu`<br>
     1. `Add a Person`<br>
     2. `Assign a slot to a Person`<br>
     3. `Enter Vaccination information`<br>
     4. `Exit Application`<b>
    
  `Please Enter Your Option:`<br>
- Conducting specific query commands inside the java to allow minimal information from the user
- A few examples of the application specific to the database can be found in the `src/model/project3.pdf` file.

## A few SQL commands
- A few SQL commands specific to the database can be found in the `src/model/project.pdf` file.






#### Please note that all the code written in the files is for an assignment, and all rights belongs to me. Copying or using the code for an assignment is not allowed and I take no responsibility for any plagiarism or any other issues that you might run into.

