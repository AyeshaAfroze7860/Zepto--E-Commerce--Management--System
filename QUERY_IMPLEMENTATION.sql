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
20, Anna Nagar, Chennai
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


9 rows selected.

SQL> SELECT * FROM PRODUCT;

PRODUCT_ID PRODUCT_NAME                        PRICE      STOCK CATEGORY_ID
---------- ------------------------------ ---------- ---------- -----------
DESCRIPTION
--------------------------------------------------
       101 APPLE                                 130         50           1
Fresh red apples

       102 BANANA                                 60         80           1
Fresh bananas

       103 TOMATO                                 40         70           2
Fresh tomatoes


PRODUCT_ID PRODUCT_NAME                        PRICE      STOCK CATEGORY_ID
---------- ------------------------------ ---------- ---------- -----------
DESCRIPTION
--------------------------------------------------
       104 MILK                                   35         90           3
Fresh milk

       105 BISCUIT                                30          0           4
Cream biscuits


SQL> SELECT CUSTOMER_NAME, EMAIL
  2  FROM CUSTOMER;

CUSTOMER_NAME        EMAIL
-------------------- --------------------
AYESHA               ayesha@gmail.com
POOJA                pooja@gmail.com
SHINY                shiny@gmail.com
RIYAVALLI            riya@gmail.com
AKSHAYA              akshu@gmail.com
ASHWINI              ashu@gmail.com
BHAVADHARANI         bhava1@gmail.com
RUPA                 rupa2@gmail.com
VARALAKSMI           var3@gmail.com

9 rows selected.

SQL> SELECT CUSTOMER_NAME, EMAIL
  2  FROM CUSTOMER
  3  WHERE CUSTOMER_ID = 105;

CUSTOMER_NAME        EMAIL
-------------------- --------------------
AKSHAYA              akshu@gmail.com

SQL> SELECT DISTINCT CATEGORY_ID
  2  FROM PRODUCT;

CATEGORY_ID
-----------
          1
          2
          3
          4

SQL> SELECT PRODUCT_NAME, PRICE
  2  FROM PRODUCT
  3  ORDER BY PRICE ASC;

PRODUCT_NAME                        PRICE
------------------------------ ----------
BISCUIT                                30
MILK                                   35
TOMATO                                 40
BANANA                                 60
APPLE                                 130

SQL> SELECT PRODUCT_NAME, PRICE
  2  FROM PRODUCT
  3  WHERE PRICE <= 60;

PRODUCT_NAME                        PRICE
------------------------------ ----------
BANANA                                 60
TOMATO                                 40
MILK                                   35
BISCUIT                                30

SQL> SELECT P.PRODUCT_NAME,
  2         P.PRICE,
  3         C.CATEGORY_NAME
  4  FROM PRODUCT P
  5  JOIN CATEGORY C
  6  ON P.CATEGORY_ID = C.CATEGORY_ID
  7  WHERE C.CATEGORY_NAME = 'FRUITS';

PRODUCT_NAME                        PRICE CATEGORY_NAME
------------------------------ ---------- ------------------------------
APPLE                                 130 FRUITS
BANANA                                 60 FRUITS

SQL> SELECT PRODUCT_NAME, PRICE, STOCK
  2  FROM PRODUCT
  3  WHERE STOCK > 0;

PRODUCT_NAME                        PRICE      STOCK
------------------------------ ---------- ----------
APPLE                                 130         50
BANANA                                 60         80
TOMATO                                 40         70
MILK                                   35         90


SQL> SELECT PRODUCT_NAME, PRICE, STOCK
  2  FROM PRODUCT
  3  WHERE STOCK = 0;

PRODUCT_NAME                        PRICE      STOCK
------------------------------ ---------- ----------
BISCUIT                                30          0

SQL> SELECT C.CUSTOMER_NAME,
  2         O.ORDER_ID,
  3         O.ORDER_DATE,
  4         O.TOTAL_AMOUNT,
  5         O.ORDER_STATUS
  6  FROM CUSTOMER C
  7  JOIN ORDERS O
  8  ON C.CUSTOMER_ID = O.CUSTOMER_ID
  9  ORDER BY O.ORDER_DATE;

CUSTOMER_NAME          ORDER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
-------------------- ---------- --------- ------------ --------------------
AYESHA                      401 20-SEP-26          180 DELIVERED
POOJA                       402 21-SEP-26          120 SHIPPED
SHINY                       403 22-SEP-26          140 SHIPPED
RIYAVALLI                   404 23-SEP-26          105 DELIVERED
AKSHAYA                     405 24-SEP-26          120 PROCESSING

SQL> SELECT P.PRODUCT_NAME,
  2         C.CATEGORY_NAME
  3  FROM PRODUCT P
  4  JOIN CATEGORY C
  5  ON P.CATEGORY_ID = C.CATEGORY_ID
  6  ORDER BY C.CATEGORY_NAME;

PRODUCT_NAME                   CATEGORY_NAME
------------------------------ ------------------------------
MILK                           DAIRY
APPLE                          FRUITS
BANANA                         FRUITS
BISCUIT                        SNACKS
TOMATO                         VEGETABLES

SQL> SELECT C.CATEGORY_NAME,
  2         COUNT(P.PRODUCT_ID) AS TOTAL_PRODUCTS
  3  FROM CATEGORY C
  4  LEFT JOIN PRODUCT P
  5  ON C.CATEGORY_ID = P.CATEGORY_ID
  6  GROUP BY C.CATEGORY_NAME
  7  ORDER BY C.CATEGORY_NAME;

CATEGORY_NAME                  TOTAL_PRODUCTS
------------------------------ --------------
BEVERAGES                                   0
DAIRY                                       1
FRUITS                                      2
SNACKS                                      1
VEGETABLES                                  1

SQL> SELECT C.CUSTOMER_NAME,
  2         COUNT(O.ORDER_ID) AS TOTAL_ORDERS
  3  FROM CUSTOMER C
  4  LEFT JOIN ORDERS O
  5  ON C.CUSTOMER_ID = O.CUSTOMER_ID
  6  GROUP BY C.CUSTOMER_NAME
  7  ORDER BY C.CUSTOMER_NAME;

CUSTOMER_NAME        TOTAL_ORDERS
-------------------- ------------
AKSHAYA                         1
ASHWINI                         0
AYESHA                          1
BHAVADHARANI                    0
POOJA                           1
RIYAVALLI                       1
RUPA                            0
SHINY                           1
VARALAKSMI                      0

9 rows selected.

SQL>