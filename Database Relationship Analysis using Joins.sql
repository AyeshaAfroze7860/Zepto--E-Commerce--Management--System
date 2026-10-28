SQL> SELECT C.CUSTOMER_NAME,
  2         O.ORDER_ID,
  3         O.ORDER_DATE,
  4         O.TOTAL_AMOUNT,
  5         O.ORDER_STATUS
  6  FROM CUSTOMER C
  7  INNER JOIN ORDERS O
  8  ON C.CUSTOMER_ID = O.CUSTOMER_ID
  9  ORDER BY O.ORDER_DATE;

CUSTOMER_NAME          ORDER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
-------------------- ---------- --------- ------------ --------------------
AYESHA                      401 20-SEP-26          180 DELIVERED
POOJA                       402 21-SEP-26          120 SHIPPED
SHINY                       403 22-SEP-26          140 SHIPPED
RIYAVALLI                   404 23-SEP-26          105 DELIVERED
AKSHAYA                     405 24-SEP-26          120 PROCESSING

SQL> SELECT C.CUSTOMER_NAME,
  2         O.ORDER_ID,
  3         O.TOTAL_AMOUNT,
  4         O.ORDER_STATUS
  5  FROM CUSTOMER C
  6  LEFT JOIN ORDERS O
  7  ON C.CUSTOMER_ID = O.CUSTOMER_ID
  8  ORDER BY C.CUSTOMER_NAME;

CUSTOMER_NAME          ORDER_ID TOTAL_AMOUNT ORDER_STATUS
-------------------- ---------- ------------ --------------------
AKSHAYA                     405          120 PROCESSING
ASHWINI
AYESHA                      401          180 DELIVERED
BHAVADHARANI
POOJA                       402          120 SHIPPED
RIYAVALLI                   404          105 DELIVERED
RUPA
SHINY                       403          140 SHIPPED
VARALAKSMI

9 rows selected.
SQL> SELECT P.PRODUCT_NAME,
  2         R.REVIEW_ID,
  3         R.REVIEW_TEXT
  4  FROM REVIEW R
  5  RIGHT JOIN PRODUCT P
  6  ON R.PRODUCT_ID = P.PRODUCT_ID
  7  ORDER BY P.PRODUCT_ID;

PRODUCT_NAME                    REVIEW_ID
------------------------------ ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
APPLE                                 701
Fresh and good quality apple

BANANA                                702
Bananas were fresh

TOMATO                                703
Tomatoes were good


PRODUCT_NAME                    REVIEW_ID
------------------------------ ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
MILK                                  704
Milk was fresh

BISCUIT                               705
Biscuits were tasty


SQL> SELECT C.CUSTOMER_NAME,
  2         O.ORDER_ID,
  3         O.ORDER_DATE,
  4         P.PRODUCT_NAME,
  5         OD.QUANTITY,
  6         OD.PRICE,
  7         OD.TOTAL_PRICE,
  8         O.ORDER_STATUS
  9  FROM CUSTOMER C
 10  INNER JOIN ORDERS O
 11  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 12  INNER JOIN ORDER_DETAILS OD
 13  ON O.ORDER_ID = OD.ORDER_ID
 14  INNER JOIN PRODUCT P
 15  ON OD.PRODUCT_ID = P.PRODUCT_ID
 16  ORDER BY O.ORDER_ID;

CUSTOMER_NAME          ORDER_ID ORDER_DAT PRODUCT_NAME
-------------------- ---------- --------- ------------------------------
  QUANTITY      PRICE TOTAL_PRICE ORDER_STATUS
---------- ---------- ----------- --------------------
AYESHA                      401 20-SEP-26 APPLE
         1        130         130 DELIVERED

AYESHA                      401 20-SEP-26 BANANA
         1         60          60 DELIVERED

POOJA                       402 21-SEP-26 BANANA
         2         60         120 SHIPPED


CUSTOMER_NAME          ORDER_ID ORDER_DAT PRODUCT_NAME
-------------------- ---------- --------- ------------------------------
  QUANTITY      PRICE TOTAL_PRICE ORDER_STATUS
---------- ---------- ----------- --------------------
SHINY                       403 22-SEP-26 TOMATO
         2         40          80 SHIPPED

SHINY                       403 22-SEP-26 MILK
         2         30          60 SHIPPED

RIYAVALLI                   404 23-SEP-26 MILK
         3         35         105 DELIVERED


CUSTOMER_NAME          ORDER_ID ORDER_DAT PRODUCT_NAME
-------------------- ---------- --------- ------------------------------
  QUANTITY      PRICE TOTAL_PRICE ORDER_STATUS
---------- ---------- ----------- --------------------
AKSHAYA                     405 24-SEP-26 BANANA
         1         60          60 PROCESSING


7 rows selected.

SQL> SELECT C.CUSTOMER_NAME,
  2         P.PRODUCT_NAME,
  3         SUM(OD.QUANTITY) AS TOTAL_QUANTITY,
  4         SUM(OD.TOTAL_PRICE) AS TOTAL_PURCHASE
  5  FROM CUSTOMER C
  6  INNER JOIN ORDERS O
  7  ON C.CUSTOMER_ID = O.CUSTOMER_ID
  8  INNER JOIN ORDER_DETAILS OD
  9  ON O.ORDER_ID = OD.ORDER_ID
 10  INNER JOIN PRODUCT P
 11  ON OD.PRODUCT_ID = P.PRODUCT_ID
 12  GROUP BY C.CUSTOMER_NAME, P.PRODUCT_NAME
 13  ORDER BY C.CUSTOMER_NAME;

CUSTOMER_NAME        PRODUCT_NAME                   TOTAL_QUANTITY
-------------------- ------------------------------ --------------
TOTAL_PURCHASE
--------------
AKSHAYA              BANANA                                      1
            60

AYESHA               APPLE                                       1
           130

AYESHA               BANANA                                      1
            60


CUSTOMER_NAME        PRODUCT_NAME                   TOTAL_QUANTITY
-------------------- ------------------------------ --------------
TOTAL_PURCHASE
--------------
POOJA                BANANA                                      2
           120

RIYAVALLI            MILK                                        3
           105

SHINY                MILK                                        2
            60


CUSTOMER_NAME        PRODUCT_NAME                   TOTAL_QUANTITY
-------------------- ------------------------------ --------------
TOTAL_PURCHASE
--------------
SHINY                TOMATO                                      2
            80


7 rows selected.




SQL> SELECT C.CUSTOMER_NAME,
  2         O.ORDER_ID,
  3         O.TOTAL_AMOUNT,
  4         P.PAYMENT_MODE,
  5         P.PAYMENT_AMOUNT,
  6         P.PAYMENT_STATUS
  7  FROM CUSTOMER C
  8  INNER JOIN ORDERS O
  9  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 10  INNER JOIN PAYMENT P
 11  ON O.ORDER_ID = P.ORDER_ID
 12  ORDER BY O.ORDER_ID;

CUSTOMER_NAME          ORDER_ID TOTAL_AMOUNT PAYMENT_MODE
-------------------- ---------- ------------ ------------------------------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- --------------------
AYESHA                      401          180 UPI
           180 SUCCESS

POOJA                       402          120 CREDIT CARD
           120 SUCCESS

SHINY                       403          140 DEBIT CARD
           140 FAILED


CUSTOMER_NAME          ORDER_ID TOTAL_AMOUNT PAYMENT_MODE
-------------------- ---------- ------------ ------------------------------
PAYMENT_AMOUNT PAYMENT_STATUS
-------------- --------------------
RIYAVALLI                   404          105 CASH ON DELIVERY
           105 PENDING

AKSHAYA                     405          120 UPI
           120 SUCCESS

SQL> SELECT P.PRODUCT_NAME,
  2         SUM(OD.QUANTITY) AS TOTAL_QUANTITY_SOLD,
  3         SUM(OD.TOTAL_PRICE) AS TOTAL_SALES
  4  FROM PRODUCT P
  5  INNER JOIN ORDER_DETAILS OD
  6  ON P.PRODUCT_ID = OD.PRODUCT_ID
  7  GROUP BY P.PRODUCT_NAME
  8  ORDER BY TOTAL_SALES DESC;

PRODUCT_NAME                   TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------------------ ------------------- -----------
BANANA                                           4         240
MILK                                             5         165
APPLE                                            1         130
TOMATO                                           2          80
