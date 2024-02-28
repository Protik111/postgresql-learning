-- ## CREATE DATABASE
-- CREATE DATABASE test2

-- ## RENAME DATABASE
-- ALTER DATABASE test2 RENAME TO test3

-- ## DELETE DATABASE
-- DROP DATABASE test3

-- ## CREATE STUDENT TABLE
-- CREATE TABLE student (
--     student_id INT, first_name VARCHAR(50), last_name VARCHAR(50), cgpa NUMERIC(1, 2)
-- )

-- ## UPDATE A TABLE NAME
-- ALTER TABLE student RENAME TO learners

-- ## DELETE A TABLE
-- DROP TABLE learners

create table users2 (
    -- user_id SERIAL PRIMARY KEY,
    user_id SERIAL, username VARCHAR(255) UNIQUE NOT NULL, email VARCHAR(255) UNIQUE NOT NULL, PRIMARY KEY (user_id, username), age int DEFAULT 18
)

INSERT INTO
    users2 (user_id, username, email, age)
VALUES (
        2, 'Protik', 'protik@gmail.com', 25
    );
## insert many
INSERT INTO
    users2 (username, email)
VALUES (
        'Protik3', 'protik3@gmail.com'
    ),
    (
        'Protik2', 'protik2@gmail.com'
    );

-- ## Delete all the rows without deleting the TABLE
TRUNCATE TABLE users2;

-- ## ALTER TABLE
-- ## add a column
ALTER TABLE users2
add COLUMN password2 VARCHAR(255) DEFAULT 'admin1223' NOT NULL;

ALTER TABLE users2
add column demo int
-- ## to change the data type of COLUMN
ALTER TABLE users2
ALTER COLUMN demo type TEXT
-- ## set default value
ALTER TABLE users2
alter COLUMN demo
set DEFAULT 'DEF_VALUE'

-- ## Delete a column
ALTER TABLE users2 drop COLUMN password2

SELECT * from users2