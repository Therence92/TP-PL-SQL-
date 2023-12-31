--TP BASE DE DONNER (PL/SQL avec ORACLE)
BEGIN
	DBMS_OUTPUT.PUT_LINE('Bonjour');
END;
DECLARE
  SUBTYPE name IS char(20);
  SUBTYPE message IS varchar2(100);
	salutation name;
	greetings message;
BEGIN
 	salutation := 'Reader';
	greetings:= 'Welcome to the World of PL/SQL';
	dbms_output.put_line('Hello ' || salutation || greetings);
END;
/
DECLARE
a INTEGER := 200; --declaration et initialisation
b INTEGER := 600;
c INTEGER;
f REAL ;
BEGIN 
c := a + b;
dbms_output.put_line('value of c:'||c);
f:= 600/30;
dbms_output.put_line('value of f:'||f);
END;
/

DECLARE
PROCEDURE COMPARE (value varchar2, pattern varchar2) is
BEGIN
IF value LIKE pattern then
	dbms_output.put_line('true');
else 
	dbms_output.put_line('false');
END IF;
END;
BEGIN
	compare('Zara Ali', 'Z%A_i');
	compare('Nuha Ali', 'Z%A_i');
END;
/
DECLARE
	i NUMBER(1);
	j NUMBER(1);
BEGIN
	<<outer_loop>> --labelisation de boucle
	FOR I IN 1..2 LOOP
		<< inner_loop>> --labelisation de boucle
		FOR j IN 1..3 LOOP
		dbms_output.put_line('i is :' ||i ||' and j is: '||j);
END LOOP inner_loop;
END loop outer_loop;
END;
/


DECLARE
	type namesarray is varray(5) of varchar2(10);
	type grades is varray(5) of INTEGER;
	names namesarray;
	marks grades;
	total integer;
BEGIN
	names := namesarray('Kavita','Pritam','Ayan','Rishav','Aziz');
	marks := grades(98,97,78,87,92);
	total := names.count ;
	dbms_output.put_line('Total'|| total||'Students');
	FOR I in 1.. total LOOP
		dbms_output.put_line('Student: ' || names(i) || ' Marks: ' || 
marks(i)); 
END LOOP; 
END; 
/

DECLARE
	type namesarray is varray(5) of varchar2(10);
	type grades is varray(5) of INTEGER;
	names namesarray;
	marks grades;
	total integer;
BEGIN
	names := namesarray('Kavita','Pritam','Ayan','Rishav','Aziz');
	marks := grades(98,97,78,87,92);
	total := names.count ;
	dbms_output.put_line('Total'|| total||'Students');
	FOR I in 1.. total LOOP
		dbms_output.put_line('Student: ' || names(i) || ' Marks: ' || 
marks(i)); 
END LOOP; 
END; 
/

DECLARE
	a number;
	b number ;
	c number;
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS
BEGIN
	IF x<y THEN
		z:= x;
	ELSE
		z:= y;
	END IF ;
	END;
BEGIN
	a:= 23;
	b:= 45;
	findMin(a,b,c);
dbms_output.put_line('Minimum de (23,45):' || c);
END;
/

CREATE TABLE customers
(
    ID INT,
    NAME VARCHAR(50),
    AGE INT,
    ADDRESS VARCHAR(100),
  	SALARY DECIMAL(10, 2)
);
--Intertion des données
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (1, 'THIERRY', 26, 'Some Address', 2000.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (2, 'Marie', 30, '123 Main St', 2500.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (3, 'Jean', 35, '456 Oak St', 3000.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (4, 'Sophie', 28, '789 Pine St', 2800.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (5, 'Pierre', 32, '101 Elm St', 3200.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (6, 'Isabelle', 27, '202 Birch St', 2700.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (7, 'Luc', 40, '303 Maple St', 3500.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (8, 'Céline', 33, '404 Cedar St', 3100.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (9, 'François', 29, '505 Walnut St', 2600.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (10, 'Aurélie', 31, '606 Pine St', 3300.00);
INSERT INTO customers (ID, NAME, AGE, ADDRESS, SALARY) VALUES (11, 'Michel', 36, '707 Oak St', 2900.00);
SELECT * from customers;
