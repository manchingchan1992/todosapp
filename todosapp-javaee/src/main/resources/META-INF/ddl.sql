# Set the initial value of the sequence to 2 
# This is because the two records inserted from import.sql do not bump up the sequence count
update SEQUENCE set SEQ_COUNT = 2 where SEQ_NAME = 'SEQ_GEN'

# For reference, the following is the DDL generated by EclipseLink from source code
#CREATE TABLE TODOS (ID BIGINT NOT NULL, COMPLETED SMALLINT DEFAULT 0, DESCRIPTION VARCHAR(255), NAME VARCHAR(255), PRIORITY VARCHAR(255), VERSION INTEGER, PRIMARY KEY (ID))
#CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR(50) NOT NULL, SEQ_COUNT DECIMAL(15), PRIMARY KEY (SEQ_NAME))
#INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0)

