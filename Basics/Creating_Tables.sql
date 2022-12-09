CREATE TABLE AIUB(
   ID NUMBER(8) CONSTRAINT ID_PK PRIMARY KEY,
   TUTION DECIMAL(4,2), 
   COURSE VARCHAR2(20),
   INSTRUCTOR VARCHAR2(30)
);

DESC AIUB

DROP TABLE AIUB





--------------------------------------------------------------------------------
/*
   DESC - displays the table details
   DROP - drops/removes the table

   CREATE TABLE <table name> (<col1> <type> (size),
                              <col2> <type> (size),
                              ....................,
                              ....................,
   );


*/
--------------------------------------------------------------------------------


CREATE TABLE AIUB(
   ID NUMBER(8) CONSTRAINT AIUB_ID_PK PRIMARY KEY, /*id number of students*/
   CREDIT DECIMAL(4,2),  --floating value
   COURSE VARCHAR2(20),
   INSTRUCTOR VARCHAR2(30)
);