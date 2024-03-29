CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);

INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');

CREATE TABLE Subjects (
    subject_name VARCHAR(255) PRIMARY KEY
);

INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');

CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(255),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_name) REFERENCES Subjects(subject_name)
);

INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');
-- Result
-- join 2 cái này với nhau để lấy cái môn cái số 6 k có
SELECT *
FROM Students
JOIN Subjects;
  
# Write your MySQL query statement below
SELECT
    Students.student_id,
    Students.student_name,
    Subjects.subject_name,
    COUNT(Examinations.subject_name) AS attended_exams
FROM Students
JOIN Subjects
LEFT JOIN Examinations
ON Students.student_id = Examinations.student_id
AND Subjects.subject_name = Examinations.subject_name
GROUP BY Students.student_id, Subjects.subject_name
ORDER BY Students.student_id,
Subjects.subject_name
