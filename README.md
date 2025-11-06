# Simple-Online-Quiz-System

The traditional examination system has many drawbacks such as its time consuming nature, difficulty of evaluating the test manually, many invigilators are required to conduct the exam and results are not accurate since calculations are done manually, and it’s difficult to keep track of every students’ results. With the development of information technology, using it in an orderly and proper manner helps to overcome the existing drawbacks of the manual system. Online examination system saves the exam information in a database, and regulates the proceedings of the exam in an orderly manner as required by the respective authority.

----------------------------------------------------------------------------------------

The Manual Examination System is replete with several problems. A cursory glance at this system reveals cases of examination malpractice and other immoral acts committed by students, which violates the rules and regulations of Universities as it concerns the administration of examination as well as the human moral content. This has taken a toll on the Nation as it produces half-baked graduates who cannot compete with University graduates from other nations of the world in the job market. 
An online examination system provides a web-based interface to the actors involved, i.e. both the students and teachers or any authority who takes up the role of administrator. 
All the information required for the conduction of the exam such as student details, test details and the contents of the test are stored in a database that is utilized by the exam system to perform the task of conducting the exam in an orderly and unbiased manner. 
This system provides more efficiency as it results in a lot of time and energy being saved in conducting the tests and prevention of any kind of malpractice during the test.

----------------------------------------------------------------------------------------

The ER diagram below shows the relationship between the many tables that exist in the database for the functioning of Online Examination System.

<img width="1095" height="1003" alt="image" src="https://github.com/user-attachments/assets/fe10ef7d-6ce2-4385-9407-1e93ce4f1907" />

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

### Snapshots -
<p><img width="968" height="644" alt="image" src="https://github.com/user-attachments/assets/32b00a5f-3b7a-478b-8ac3-e049a538a792" />
Snapshot 1: Home page of the project <br>
</p>
<p>
<img width="960" height="587" alt="image" src="https://github.com/user-attachments/assets/2ce96225-3cf0-4c74-9cb3-bf19b8f6b75d" />
Snapshot 2: Sign Up Page <br>
</p>
<p>                                            
<img width="961" height="474" alt="image" src="https://github.com/user-attachments/assets/526cc406-1766-4ddb-b1b5-2a312b53e2e2" />
Snapshot 3: Dashboard for Students <br>
</p>
<p>
<img width="992" height="419" alt="image" src="https://github.com/user-attachments/assets/bbeb011b-6397-45c7-a599-d0bd6085f6a2" />
Snapshot 4: Leaderboard for Students <br>
</p>
<p>
<img width="988" height="484" alt="image" src="https://github.com/user-attachments/assets/5108f148-6506-443c-af2b-a7c2b5cc612f" />
Snapshot 5: Quiz for Student <br>
</p>
<p>
<img width="995" height="393" alt="image" src="https://github.com/user-attachments/assets/89bd9740-2ef2-42de-b38a-a1094e7d7b8e" />
Snapshot 6: Scoreboard for Student <br>
</p>
<p>
<img width="981" height="458" alt="image" src="https://github.com/user-attachments/assets/ee59c63a-4b44-4c69-af73-a0d0e56360d2" />
Snapshot 7: Dashboard for Staff <br>
</p>
<p>
<img width="962" height="386" alt="image" src="https://github.com/user-attachments/assets/521321a5-fd17-4b06-beba-d5db30769e09" />
Snapshot 8: Add Quiz, Delete Quiz, View Quiz functionalities for Staff <br>
</p>
<p>
<img width="983" height="383" alt="image" src="https://github.com/user-attachments/assets/96005c76-ddeb-4467-b74a-6c3ed6023e25" />
Snapshot 9: Quizzes Added by Staff <br>
</p>
<p>
<img width="976" height="478" alt="image" src="https://github.com/user-attachments/assets/a64f1971-5430-46d8-bc96-3f4d998ac10d" />
Snapshot 10: Add questions functionality for Staff <br> </p>
