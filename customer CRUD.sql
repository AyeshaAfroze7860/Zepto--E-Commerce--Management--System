SQL> CREATE TABLE CUSTOMER(
  2      CUSTOMER_ID NUMBER PRIMARY KEY,
  3      CUSTOMER_NAME VARCHAR2(20),
  4      EMAIL VARCHAR2(20),
  5      PHONE_NUMBER VARCHAR2(15),
  6      ADDRESS VARCHAR2(80),
  7      PASSWORD VARCHAR2(10)
  8  );

Table created.

SQL> INSERT INTO CUSTOMER VALUES(101,'AYESHA','ayesha@gmail.com','9876543210','12, Anna Nagar, Chennai','2543');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(102,'POOJA','pooja@gmail.com','8765987413','45, Gandhi Road, Tambaram','5742');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(103,'SHINY','shiny@gmail.com','7986235712','78, MG Road, Coimbatore','9345');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(104,'RIYAVALLI','riya@gmail.com','7625381937','23, Cross Street, Velachery','7253');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(105,'AKSHAYA','akshu@gmail.com','9123456789','56, Bharathi Nagar, Madurai','8642');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(106,'ASHWINI','ashu@gmail.com','9012345678','18, Lake View Road, Salem','3815');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(107,'BHAVADHARANI','bhava1@gmail.com','9887766554','9, Nehru Street, Trichy','5294');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(108,'RUPA','rupa2@gmail.com','9445566778','41, Gandhi Nagar, Erode','6437');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(109,'VARALAKSMI','var3@gmail.com','9365472810','67, Temple Road, Tirunelveli','7821');

1 row created.

SQL> INSERT INTO CUSTOMER VALUES(110,'PRIYA','priya2@gmail.com','9090909090','31, Park Avenue, Vellore','9156');

1 row created.

SQL> SELECT * FROM CUSTOMER;

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        101 AYESHA               ayesha@gmail.com     9876543210
12, Anna Nagar, Chennai
2543

        102 POOJA                pooja@gmail.com      8765987413
45, Gandhi Road, Tambaram
5742

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        103 SHINY                shiny@gmail.com      7986235712
78, MG Road, Coimbatore
9345

        104 RIYAVALLI            riya@gmail.com       7625381937
23, Cross Street, Velachery

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
7253

        105 AKSHAYA              akshu@gmail.com      9123456789
56, Bharathi Nagar, Madurai
8642

        106 ASHWINI              ashu@gmail.com       9012345678

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
18, Lake View Road, Salem
3815

        107 BHAVADHARANI         bhava1@gmail.com     9887766554
9, Nehru Street, Trichy
5294


CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        108 RUPA                 rupa2@gmail.com      9445566778
41, Gandhi Nagar, Erode
6437

        109 VARALAKSMI           var3@gmail.com       9365472810
67, Temple Road, Tirunelveli
7821

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        110 PRIYA                priya2@gmail.com     9090909090
31, Park Avenue, Vellore
9156


10 rows selected.

SQL> UPDATE CUSTOMER
  2  SET PHONE_NUMBER = '9998887776'
  3  WHERE CUSTOMER_ID = 101;

1 row updated.

SQL> SELECT * FROM CUSTOMER;

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        101 AYESHA               ayesha@gmail.com     9998887776
12, Anna Nagar, Chennai
2543

        102 POOJA                pooja@gmail.com      8765987413
45, Gandhi Road, Tambaram
5742

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        103 SHINY                shiny@gmail.com      7986235712
78, MG Road, Coimbatore
9345

        104 RIYAVALLI            riya@gmail.com       7625381937
23, Cross Street, Velachery

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
7253

        105 AKSHAYA              akshu@gmail.com      9123456789
56, Bharathi Nagar, Madurai
8642

        106 ASHWINI              ashu@gmail.com       9012345678

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
18, Lake View Road, Salem
3815

        107 BHAVADHARANI         bhava1@gmail.com     9887766554
9, Nehru Street, Trichy
5294


CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        108 RUPA                 rupa2@gmail.com      9445566778
41, Gandhi Nagar, Erode
6437

        109 VARALAKSMI           var3@gmail.com       9365472810
67, Temple Road, Tirunelveli
7821

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        110 PRIYA                priya2@gmail.com     9090909090
31, Park Avenue, Vellore
9156


10 rows selected.

SQL> UPDATE CUSTOMER
  2  SET ADDRESS = '25, Anna Salai, Chennai'
  3  WHERE CUSTOMER_ID = 104;

1 row updated.

SQL> SELECT * FROM CUSTOMER;

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        101 AYESHA               ayesha@gmail.com     9998887776
12, Anna Nagar, Chennai
2543

        102 POOJA                pooja@gmail.com      8765987413
45, Gandhi Road, Tambaram
5742

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        103 SHINY                shiny@gmail.com      7986235712
78, MG Road, Coimbatore
9345

        104 RIYAVALLI            riya@gmail.com       7625381937
25, Anna Salai, Chennai

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
7253

        105 AKSHAYA              akshu@gmail.com      9123456789
56, Bharathi Nagar, Madurai
8642

        106 ASHWINI              ashu@gmail.com       9012345678

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
18, Lake View Road, Salem
3815

        107 BHAVADHARANI         bhava1@gmail.com     9887766554
9, Nehru Street, Trichy
5294


CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        108 RUPA                 rupa2@gmail.com      9445566778
41, Gandhi Nagar, Erode
6437

        109 VARALAKSMI           var3@gmail.com       9365472810
67, Temple Road, Tirunelveli
7821

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        110 PRIYA                priya2@gmail.com     9090909090
31, Park Avenue, Vellore
9156


10 rows selected.

SQL> DELETE FROM CUSTOMER
  2  WHERE CUSTOMER_ID = 110;

1 row deleted.

SQL> SELECT * FROM CUSTOMER;

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        101 AYESHA               ayesha@gmail.com     9998887776
12, Anna Nagar, Chennai
2543

        102 POOJA                pooja@gmail.com      8765987413
45, Gandhi Road, Tambaram
5742

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        103 SHINY                shiny@gmail.com      7986235712
78, MG Road, Coimbatore
9345

        104 RIYAVALLI            riya@gmail.com       7625381937
25, Anna Salai, Chennai

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
7253

        105 AKSHAYA              akshu@gmail.com      9123456789
56, Bharathi Nagar, Madurai
8642

        106 ASHWINI              ashu@gmail.com       9012345678

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
18, Lake View Road, Salem
3815

        107 BHAVADHARANI         bhava1@gmail.com     9887766554
9, Nehru Street, Trichy
5294


CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        108 RUPA                 rupa2@gmail.com      9445566778
41, Gandhi Nagar, Erode
6437

        109 VARALAKSMI           var3@gmail.com       9365472810
67, Temple Road, Tirunelveli
7821

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------


9 rows selected.

SQL> DELETE FROM CUSTOMER
  2  WHERE CUSTOMER_ID = 109;

1 row deleted.

SQL> SELECT * FROM CUSTOMER;

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        101 AYESHA               ayesha@gmail.com     9998887776
12, Anna Nagar, Chennai
2543

        102 POOJA                pooja@gmail.com      8765987413
45, Gandhi Road, Tambaram
5742

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------

        103 SHINY                shiny@gmail.com      7986235712
78, MG Road, Coimbatore
9345

        104 RIYAVALLI            riya@gmail.com       7625381937
25, Anna Salai, Chennai

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
7253

        105 AKSHAYA              akshu@gmail.com      9123456789
56, Bharathi Nagar, Madurai
8642

        106 ASHWINI              ashu@gmail.com       9012345678

CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
18, Lake View Road, Salem
3815

        107 BHAVADHARANI         bhava1@gmail.com     9887766554
9, Nehru Street, Trichy
5294


CUSTOMER_ID CUSTOMER_NAME        EMAIL                PHONE_NUMBER
----------- -------------------- -------------------- ---------------
ADDRESS
--------------------------------------------------------------------------------
PASSWORD
----------
        108 RUPA                 rupa2@gmail.com      9445566778
41, Gandhi Nagar, Erode
6437


8 rows selected.

SQL> SELECT CUSTOMER_NAME, EMAIL
  2  FROM CUSTOMER
  3  WHERE CUSTOMER_ID = 105;

CUSTOMER_NAME        EMAIL
-------------------- --------------------
AKSHAYA              akshu@gmail.com

SQL> SELECT CUSTOMER_NAME, PHONE_NUMBER
  2  FROM CUSTOMER;

CUSTOMER_NAME        PHONE_NUMBER
-------------------- ---------------
AYESHA               9998887776
POOJA                8765987413
SHINY                7986235712
RIYAVALLI            7625381937
AKSHAYA              9123456789
ASHWINI              9012345678
BHAVADHARANI         9887766554
RUPA                 9445566778

8 rows selected.

SQL> 