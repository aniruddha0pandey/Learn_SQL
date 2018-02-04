CREATE TABLE TABLE_NAME(
   COLUMN_1 DATATYPE NOT NULL PRIMARY KEY,
   COLUMN_2 DATATYPE(WIDTH),
   COLUMN_3 DATATYPE NOT NULL
);

--or

CREATE TABLE TABLE_NAME(
   COLUMN_1 DATATYPE,
   COLUMN_2 DATATYPE(WIDTH),
   COLUMN_3 DATATYPE
   CONSTRAINT pk_TABLE_NAME PRIMARY KEY (COLUMN_1,COLUMN_3)
);

/* 
   This is the syntax of creating a table.
   Now, this table can be filled using "INSERT INTO" clause.
   Here the "WIDTH" defines the maximum quantity of lenght it can hold.
   Or otherwise, the width can be predetermined by the datatype it self, as in "DATE" datatype.
   If columns are of the NUMBER datatype, define precision and scale instead of width.
   You can specify rules for each column of a table. These rules are called integrity constraints.
   One example is a "NOT NULL" integrity constraint.
   This constraint forces the column to contain a value in every row.
   Also we're going to make that column "PRIMARY KEY", thus it can't be "NULL".
   Here "pk" and "fk" are "PRIMARY KEY" and "FOREIGN KEY".
   The "PRIMARY KEY" constraint uniquely identifies each record in a database table.
   And also a table can have only one "PRIMARY KEY".
   Here we also named the "PRIMARY KEY" constraint "pk_TABLE_NAME".
   Here there is only "PRIMARY KEY" which is "pk_TABLE_NAME" but its value is (COLUMN_1+COLUMN_3).
*/

CREATE TABLE TABLE_NAME AS(SELECT * FROM Customers);

/* 
   We can also create table using another table like mentioned above.
   This table will be the exact copy of table "Customers".
*/

CREATE TABLE TABLE_NAME(
   COLUMN_1 DATATYPE,
   COLUMN_2 DATATYPE,
   COLUMN_3 DATATYPE
   CONSTRAINT pk_TABLE_NAME PRIMARY KEY (COLUMN_1)
   CONSTRAINT fk_TABLE_NAME FOREIGN KEY (PRIMARY_COLUMN_2) REFERENCES Customers (PRIMARY_COLUMN_2)
);

/* 
   The "REFERENCE" keyword is also known as "Referential Integrity".
   As tables can declarative specify realtionships between tables.
   The above query will create a "child" table, name "TABLE_NAME" of the table
   "Customers" by including a "FOREIGN KEY" in the "TABLE_NAME" table that references
   the "Customers" table.
   "FOREIGN KEY" must reference "PRIMARY KEY" to make "parent" "child" relation in tables.
*/
