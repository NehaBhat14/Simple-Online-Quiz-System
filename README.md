# Simple-Online-Quiz-System

The traditional examination system has many drawbacks such as its time consuming nature, difficulty of evaluating the test manually, many invigilators are required to conduct the exam and results are not accurate since calculations are done manually, and it’s difficult to keep track of every students’ results. With the development of information technology, using it in an orderly and proper manner helps to overcome the existing drawbacks of the manual system. Online examination system saves the exam information in a database, and regulates the proceedings of the exam in an orderly manner as required by the respective authority.

----------------------------------------------------------------------------------------

The Manual Examination System is replete with several problems. A cursory glance at this system reveals cases of examination malpractice and other immoral acts committed by students, which violates the rules and regulations of Universities as it concerns the administration of examination as well as the human moral content. This has taken a toll on the Nation as it produces half-baked graduates who cannot compete with University graduates from other nations of the world in the job market. 
An online examination system provides a web-based interface to the actors involved, i.e. both the students and teachers or any authority who takes up the role of administrator. 
All the information required for the conduction of the exam such as student details, test details and the contents of the test are stored in a database that is utilized by the exam system to perform the task of conducting the exam in an orderly and unbiased manner. 
This system provides more efficiency as it results in a lot of time and energy being saved in conducting the tests and prevention of any kind of malpractice during the test.

----------------------------------------------------------------------------------------

The ER diagram below shows the relationship between the many tables that exist in the database for the functioning of Online Examination System.


Fig: ER Diagram of Online Examination System

----------------------------------------------------------------------------------------

### Functional Modules
The functional modules included in the project are listed below:

#### Insert Module:
This module provides the functionality of collecting the required data from the designed interface and transmitting it to the appropriate table present in the database designed for this project. If the provided data does not satisfy the given constraints, it must refrain from storing it into the database.
#### Update Module:
This module again has the functionality of collecting the data from the designed interface, but it updates the already existing tuple that matches the provided primary key of the tuple to be updated, by replacing the existing attribute values with the newly collected data. Again, if the newly provided data does not satisfy the given constraints, it must refrain from updating the corresponding tuple.
#### Delete Module:
The delete counterpart is loaded with the ability to delete a single or multiple records from the table. It searches for the tuple, in the query specified table, based on the provided value for an attribute. Admin can delete in the interface, based on which delete module searches for the record corresponding to that provided attribute value and deletes the record.
#### Retrieve Module:
The retrieve module has a basic functionality of accessing the entire specified table from the database and displays it.
#### Trigger Module:
Trigger in database is set of statements that are executed after an event occurs on the specified table. This is useful for logs wherein every change in database can be logged which helps keep a track of all changes/transactions on the database.
 
### Modules in the Online Examination System
Online Examination System is that which enables the Students & Teachers to register for the system. Students are allowed to take the online test and see their progress. Also, it enables the Teachers to add, delete and update the test questions and also to keep track of the student progress.
•	Student
•	Staff
•	Login
•	Add/Remove Quizzes and Add questions
•	Score

#### Student:
Student has to log in to the system and can then view all the quizzes. Student can see the quiz list and attend the quizzes. After attending the quizzes students will get instant results and the same will be stored in the database.

#### Staff:
Staff also has to log in to the system first, then they can create new quizzes, or even remove or modify an existing one. They can see the progress and they can also update the existing quiz.

#### Login:
Login is must and should for both staff and student, so that all records will be safely saved to the database. If a particular user, say either a student or a staff member forgets their password, there is a utility to reset their password too.

#### Add/Remove quiz and Add question:
Staff users have the authority to create new quizzes and update/remove existing ones. Staff can also add questions to existing quizzes.
 
#### Score:
Staff can see the scoreboard of the quiz which is added by him/her. The student can see the score of the quiz which he/she is attended.

----------------------------------------------------------------------------------------

