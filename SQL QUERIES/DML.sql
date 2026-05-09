//insert
//warehouse branch

SQL> INSERT INTO warehouse_branch VALUES (1, 'SIVAKASI MAIN', 'SIVAKASI', 5000, 'ACTIVE');

1 row created.

SQL> INSERT INTO warehouse_branch VALUES (2, 'MADURAI CENTRAL', 'MADURAI', 6000, 'ACTIVE');

1 row created.

SQL> INSERT INTO warehouse_branch VALUES (3, 'VIRUDUNAGAR EAST', 'VIRUDUNAGAR', 4500, 'ACTIVE');

1 row created.

SQL> INSERT INTO warehouse_branch VALUES (4, 'CHENNAI NORTH', 'CHENNAI', 8000, 'ACTIVE');

1 row created.

SQL> INSERT INTO warehouse_branch VALUES (5, 'COIMBATORE HUB', 'COIMBATORE', 7000, 'ACTIVE');

1 row created.

SQL> INSERT INTO warehouse_branch VALUES (6, 'TRICHY DEPOT', 'TRICHY', 4000, 'INACTIVE');

1 row created.



SQL> select * from warehouse_branch;

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
         1 SIVAKASI MAIN
SIVAKASI                                                 5000
ACTIVE

         2 MADURAI CENTRAL
MADURAI                                                  6000
ACTIVE

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------

         3 VIRUDUNAGAR EAST
VIRUDUNAGAR                                              4500
ACTIVE

         4 CHENNAI NORTH
CHENNAI                                                  8000

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
ACTIVE

         5 COIMBATORE HUB
COIMBATORE                                               7000
ACTIVE

         6 TRICHY DEPOT

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
TRICHY                                                   4000
INACTIVE


6 rows selected.

//product

SQL> INSERT INTO product VALUES (102, 'Mouse', 500, 3, 2);

1 row created.

SQL> INSERT INTO product VALUES (103, 'Keyboard', 1200, 3, 2);

1 row created.

SQL> INSERT INTO product VALUES (105, 'Scanner', 9000, 2, 3);

1 row created.

SQL> select * from product;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       104 Printer                                                 15000
          2           3

       102 Mouse                                                     500
          3           2

       103 Keyboard                                                 1200
          3           2


PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       105 Scanner                                                  9000
          2           3


//sale

SQL> INSERT INTO sales VALUES (201, DATE '2026-02-10', 'Pending', 1);

1 row created.

SQL> INSERT INTO sales VALUES (202, DATE '2026-02-11', 'Completed', 2);

1 row created.

SQL> INSERT INTO sales VALUES (203, DATE '2026-02-12', 'Completed', 3);

1 row created.

SQL> INSERT INTO sales VALUES (204, DATE '2026-02-13', 'Cancelled', 4);

1 row created.

SQL> select * from sales;

   SALE_ID SALE_DATE SALE_STATUS          CUSTOMER_ID
---------- --------- -------------------- -----------
       201 10-FEB-26 Pending                        1
       202 11-FEB-26 Completed                      2
       203 12-FEB-26 Completed                      3
       204 13-FEB-26 Cancelled                      4



//order items

SQL> INSERT INTO order_items VALUES (302, 202, 102, 5, DATE '2026-02-16');

1 row created.

SQL> INSERT INTO order_items VALUES (303, 203, 103, 3, DATE '2026-02-17');

1 row created.

SQL> INSERT INTO order_items VALUES (304, 204, 104, 1, DATE '2026-02-18');

1 row created.

SQL> select * from order_items;

ORDER_ITEM_ID    SALE_ID PRODUCT_ID   QUANTITY DELIVERY_
------------- ---------- ---------- ---------- ---------
          302        202        102          5 16-FEB-26
          303        203        103          3 17-FEB-26
          304        204        104          1 18-FEB-26


//returns

SQL> INSERT INTO returns VALUES (401, 202, DATE '2026-02-18', 1, 'Damaged item');

1 row created.

SQL> INSERT INTO returns VALUES (402, 203, DATE '2026-02-19', 2, 'Wrong product');

1 row created.

SQL> INSERT INTO returns VALUES (404, 202, DATE '2026-02-21', 1, 'Defective');

1 row created.

SQL> select * from returns;

 RETURN_ID    SALE_ID RETURN_DA QUANTITY_RETURNED
---------- ---------- --------- -----------------
REASON
--------------------------------------------------
       401        202 18-FEB-26                 1
Damaged item

       402        203 19-FEB-26                 2
Wrong product

       404        202 21-FEB-26                 1
Defective

//stock movement

SQL> INSERT INTO stock_movement VALUES (502, 102, 1, DATE '2026-02-09');

1 row created.

SQL> INSERT INTO stock_movement VALUES (503, 103, 2, DATE '2026-02-10');

1 row created.

SQL> INSERT INTO stock_movement VALUES (504, 104, 2, DATE '2026-02-11');

1 row created.

SQL> select * from stock_movement;

MOVEMENT_ID PRODUCT_ID  BRANCH_ID MOVEMENT_
----------- ---------- ---------- ---------
        502        102          1 09-FEB-26
        503        103          2 10-FEB-26
        504        104          2 11-FEB-26


//inward movement

SQL> INSERT INTO inward VALUES (502, 2, 300, DATE '2026-02-10');

1 row created.

SQL> INSERT INTO inward VALUES (503, 2, 250, DATE '2026-02-11');

1 row created.

SQL> INSERT INTO inward VALUES (504, 3, 180, DATE '2026-02-12');

1 row created.

SQL> select * from inward;

MOVEMENT_ID SUPPLIER_ID QUANTITY_RECEIVED RECEIVED_
----------- ----------- ----------------- ---------
        502           2               300 10-FEB-26
        503           2               250 11-FEB-26
        504           3               180 12-FEB-26

//warehouse inventory

SQL> INSERT INTO warehouse_inventory VALUES (1, 102, 'R2', SYSDATE);

1 row created.

SQL> INSERT INTO warehouse_inventory VALUES (2, 103, 'R3', SYSDATE);

1 row created.

SQL> INSERT INTO warehouse_inventory VALUES (2, 104, 'R4', SYSDATE);

1 row created.

SQL> select * from warehouse_inventory;

 BRANCH_ID PRODUCT_ID RACK_NUMBER          LAST_UPDA
---------- ---------- -------------------- ---------
         1        102 R2                   08-FEB-26
         2        103 R3                   08-FEB-26
         2        104 R4                   08-FEB-26


SQL> INSERT ALL
  2  INTO warehouse_branch values(9,'TENKASI WEST','TENKASI',7000,'INACTVE')
  3  INTO warehouse_branch values(10,'ERODE CENTRAL','ERODE',5000,'ACTIVE')
  4  select * from dual;

2 rows created.

SQL> SELECT * FROM WAREHOUSE_BRANCH;

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
         7 MADURAI EAST
MADURAI                                                  7000
INACTVE

         8 CHENNAI SOUTH
CHENNAI                                                  5000
ACTIVE

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------

         1 SIVAKASI MAIN
SIVAKASI                                                 5000
ACTIVE

         2 MADURAI CENTRAL
MADURAI                                                  7000

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
ACTIVE

         3 VIRUDUNAGAR EAST
VIRUDUNAGAR                                              4500
ACTIVE

         4 CHENNAI NORTH

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
CHENNAI                                                  8000
ACTIVE

         5 COIMBATORE HUB
COIMBATORE                                               7000
ACTIVE


 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
         6 TRICHY DEPOT
TRICHY                                                   4000
INACTIVE

         9 TENKASI WEST
TENKASI                                                  7000
INACTVE

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------

        10 ERODE CENTRAL
ERODE                                                    5000
ACTIVE


10 rows selected.




//update


//update the capacity of the warehouse by branch id

SQL> UPDATE warehouse_branch SET capacity = 7000 WHERE branch_id = 2;

1 row updated.

SQL> select * from warehouse_branch;

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
         1 SIVAKASI MAIN
SIVAKASI                                                 5000
ACTIVE

         2 MADURAI CENTRAL
MADURAI                                                  7000
ACTIVE

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------

         3 VIRUDUNAGAR EAST
VIRUDUNAGAR                                              4500
ACTIVE

         4 CHENNAI NORTH
CHENNAI                                                  8000

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
ACTIVE

         5 COIMBATORE HUB
COIMBATORE                                               7000
ACTIVE

         6 TRICHY DEPOT

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
TRICHY                                                   4000
INACTIVE


6 rows selected.



//update the price of the product by product id

SQL> UPDATE product SET price = price + 1000 WHERE product_id = 103;

1 row updated.

SQL> select * from product;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       104 Printer                                                 15000
          2           3

       102 Mouse                                                     500
          3           2

       103 Keyboard                                                 2200
          3           2


PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       105 Scanner                                                  9000
          2           3

//update the sales status

SQL> UPDATE sales SET sale_status = 'Completed' WHERE sale_id = 201;

1 row updated.

SQL> select * from sales;

   SALE_ID SALE_DATE SALE_STATUS          CUSTOMER_ID
---------- --------- -------------------- -----------
       201 10-FEB-26 Completed                      1
       202 11-FEB-26 Completed                      2
       203 12-FEB-26 Completed                      3
       204 13-FEB-26 Cancelled                      4


//update the quantity received by supplier to warehouse

SQL> UPDATE inward SET quantity_received = quantity_received + 100 WHERE supplier_id = 2;

2 rows updated.

SQL> select * from inward;

MOVEMENT_ID SUPPLIER_ID QUANTITY_RECEIVED RECEIVED_
----------- ----------- ----------------- ---------
        502           2               400 10-FEB-26
        503           2               350 11-FEB-26
        504           3               180 12-FEB-26

//update the quantity in order items

SQL> UPDATE order_items SET quantity = 5 WHERE order_item_id = 303;

1 row updated.

SQL> select * from order_items;

ORDER_ITEM_ID    SALE_ID PRODUCT_ID   QUANTITY DELIVERY_
------------- ---------- ---------- ---------- ---------
          302        202        102          5 16-FEB-26
          303        203        103          5 17-FEB-26
          304        204        104          1 18-FEB-26



//update the rack number of the product in the particular warehouse

SQL> UPDATE warehouse_inventory SET rack_number = 'R12' WHERE branch_id = 1 AND product_id = 102;

1 row updated.


SQL> select * from product;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       104 Printer                                                 15000
          2           3

       102 Mouse                                                     500
          3           2

       103 Keyboard                                                 2200
          3           2


PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       105 Scanner                                                  9000
          2           3

//update the refund amount by the return id

SQL> UPDATE returns SET refund_amount = 2500 WHERE return_id = 401;

1 row updated.

SQL> select * from returns;

 RETURN_ID    SALE_ID RETURN_DA QUANTITY_RETURNED
---------- ---------- --------- -----------------
REASON                                             REFUND_AMOUNT
-------------------------------------------------- -------------
       401        202 18-FEB-26                 1
Damaged item                                                2500

       402        203 19-FEB-26                 2
Wrong product                                                  0

       404        202 21-FEB-26                 1
Defective                                                      0



//date

SQL> SELECT SYSDATE FROM dual;

SYSDATE
---------
10-FEB-26




SQL> SELECT sale_id, ADD_MONTHS(sale_date, 3) AS new_sale_date FROM sales;

   SALE_ID NEW_SALE_
---------- ---------
       201 10-MAY-26
       202 11-MAY-26
       203 12-MAY-26
       204 13-MAY-26


SQL> SELECT TRUNC(delivery_date) AS delivery_date FROM order_items;

DELIVERY_
---------
16-FEB-26
17-FEB-26
18-FEB-26


SQL> SELECT movement_id, ROUND(movement_date, 'MONTH') AS rounded_date FROM stock_movement;

MOVEMENT_ID ROUNDED_D
----------- ---------
        502 01-FEB-26
        503 01-FEB-26
        504 01-FEB-26

SQL> SELECT sale_id, EXTRACT(YEAR FROM sale_date) AS sale_year FROM sales;

   SALE_ID  SALE_YEAR
---------- ----------
       201       2026
       202       2026
       203       2026
       204       2026



SQL> SELECT movement_id, NEXT_DAY(received_date, 'FRIDAY') AS next_friday FROM inward;

MOVEMENT_ID NEXT_FRID
----------- ---------
        502 13-FEB-26
        503 13-FEB-26
        504 13-FEB-26



SQL> SELECT sale_id, LAST_DAY(sale_date) AS last_day FROM sales;

   SALE_ID LAST_DAY
---------- ---------
       201 28-FEB-26
       202 28-FEB-26
       203 28-FEB-26
       204 28-FEB-26


SQL> SELECT CURRENT_DATE FROM dual;

CURRENT_D
---------
10-FEB-26



SQL> SELECT movement_id,TRUNC(SYSDATE - movement_date) AS days_since_movement FROM stock_movement;

MOVEMENT_ID DAYS_SINCE_MOVEMENT
----------- -------------------
        502                   1
        503                   0
        504                   0


SQL> select to_char(delivery_date,'MONTH') as tochar from order_items;

TOCHAR
------------------------------------
FEBRUARY
FEBRUARY
FEBRUARY


SQL> select to_char(movement_date,'DAY') as toDate from stock_movement;

TODATE
------------------------------------
MONDAY
TUESDAY
WEDNESDAY



//aggregate function

SQL> SELECT COUNT(*) AS total_branches FROM warehouse_branch;

TOTAL_BRANCHES
--------------
             6

SQL> SELECT COUNT(product_id) AS total_products FROM product;

TOTAL_PRODUCTS
--------------
             4

SQL> SELECT SUM(capacity) AS total_capacity FROM warehouse_branch;

TOTAL_CAPACITY
--------------
         35500

SQL> SELECT SUM(quantity) AS total_quantity_ordered FROM order_items;

TOTAL_QUANTITY_ORDERED
----------------------
                    11

SQL> SELECT AVG(price) AS average_price FROM product;

AVERAGE_PRICE
-------------
         6675

SQL> SELECT AVG(quantity_received) AS avg_inward_quantity FROM inward_stock;
SELECT AVG(quantity_received) AS avg_inward_quantity FROM inward_stock
                                                          *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> SELECT AVG(quantity_received) AS avg_inward_quantity FROM inward;

AVG_INWARD_QUANTITY
-------------------
                310

SQL> SELECT MIN(price) AS minimum_price FROM product;

MINIMUM_PRICE
-------------
          500

SQL> SELECT MAX(price) AS maximum_price FROM product;

MAXIMUM_PRICE
-------------
        15000

SQL> SELECT MAX(refund_amount) AS max_refund FROM returns;

MAX_REFUND
----------
      2500

SQL> SELECT city, COUNT(branch_id) AS branch_count FROM warehouse_branch GROUP BY city;

CITY                                               BRANCH_COUNT
-------------------------------------------------- ------------
SIVAKASI                                                      1
MADURAI                                                       1
VIRUDUNAGAR                                                   1
CHENNAI                                                       1
COIMBATORE                                                    1
TRICHY                                                        1

6 rows selected.

SQL> SELECT product_id, SUM(quantity) AS total_quantity FROM order_items GROUP BY product_id;

PRODUCT_ID TOTAL_QUANTITY
---------- --------------
       102              5
       103              5
       104              1

SQL> SELECT category_id, AVG(price) AS avg_price FROM product GROUP BY category_id;

CATEGORY_ID  AVG_PRICE
----------- ----------
          2      12000
          3       1350

SQL> SELECT product_id, SUM(quantity) AS total_quantity FROM order_items GROUP BY product_id HAVING SUM(quantity) > 3;

PRODUCT_ID TOTAL_QUANTITY
---------- --------------
       102              5
       103              5


SQL> SELECT city, COUNT(branch_id) AS branch_count FROM warehouse_branch GROUP BY city HAVING COUNT(branch_id) > 1;

CITY                                               BRANCH_COUNT
-------------------------------------------------- ------------
MADURAI                                                       2
CHENNAI                                                       2


//number functions


SQL> SELECT product_id, ABS(price - 10000) FROM product;

PRODUCT_ID ABS(PRICE-10000)
---------- ----------------
       104             5000
       102             9500
       103             7800
       105             1000

SQL> SELECT ROUND(AVG(price)) FROM product;

ROUND(AVG(PRICE))
-----------------
             6675

SQL> SELECT TRUNC(AVG(price)) FROM product;

TRUNC(AVG(PRICE))
-----------------
             6675

SQL> SELECT CEIL(AVG(quantity)) FROM order_items;

CEIL(AVG(QUANTITY))
-------------------
                  4

SQL> SELECT FLOOR(AVG(quantity_received)) FROM inward;

FLOOR(AVG(QUANTITY_RECEIVED))
-----------------------------
                          310

SQL> SELECT product_id, MOD(price, 1000) FROM product;

PRODUCT_ID MOD(PRICE,1000)
---------- ---------------
       104               0
       102             500
       103             200
       105               0

SQL> SELECT order_item_id, POWER(quantity, 2) FROM order_items;

ORDER_ITEM_ID POWER(QUANTITY,2)
------------- -----------------
          302                25
          303                25
          304                 1

SQL> SELECT product_id, SQRT(price) FROM product;

PRODUCT_ID SQRT(PRICE)
---------- -----------
       104  122.474487
       102  22.3606798
       103  46.9041576
       105  94.8683298

SQL> SELECT product_id, SIGN(price - 5000) FROM product;

PRODUCT_ID SIGN(PRICE-5000)
---------- ----------------
       104                1
       102               -1
       103               -1
       105                1


SQL> SELECT movement_id, EXP(quantity_received) FROM inward;
SELECT movement_id, EXP(quantity_received) FROM inward
                    *
ERROR at line 1:
ORA-01426: numeric overflow


SQL> SELECT product_id, LN(price) FROM product;

PRODUCT_ID  LN(PRICE)
---------- ----------
       104 9.61580548
       102  6.2146081
       103 7.69621264
       105 9.10497986

SQL> SELECT product_id, LOG(10, price) FROM product;

PRODUCT_ID LOG(10,PRICE)
---------- -------------
       104    4.17609126
       102       2.69897
       103    3.34242268
       105    3.95424251


//string functions


SQL> SELECT UPPER(branch_name) FROM warehouse_branch;

UPPER(BRANCH_NAME)
--------------------------------------------------
MADURAI EAST
CHENNAI SOUTH
SIVAKASI MAIN
MADURAI CENTRAL
VIRUDUNAGAR EAST
CHENNAI NORTH
COIMBATORE HUB
TRICHY DEPOT
TENKASI WEST
ERODE CENTRAL

10 rows selected.

SQL> SELECT LOWER(product_name) FROM product;

LOWER(PRODUCT_NAME)
--------------------------------------------------
printer
mouse
keyboard
scanner


SQL> SELECT INITCAP(product_name) FROM product;

INITCAP(PRODUCT_NAME)
--------------------------------------------------
Printer
Mouse
Keyboard
Scanner


SQL> SELECT branch_name, LENGTH(branch_name) FROM warehouse_branch;

BRANCH_NAME                                        LENGTH(BRANCH_NAME)
-------------------------------------------------- -------------------
MADURAI EAST                                                        12
CHENNAI SOUTH                                                       13
SIVAKASI MAIN                                                       13
MADURAI CENTRAL                                                     15
VIRUDUNAGAR EAST                                                    16
CHENNAI NORTH                                                       13
COIMBATORE HUB                                                      14
TRICHY DEPOT                                                        12
TENKASI WEST                                                        12
ERODE CENTRAL                                                       13

10 rows selected.


10 rows selected.

SQL> SELECT SUBSTR(product_name, 1, 4) FROM product;

SUBSTR(PRODUCT_N
----------------
Prin
Mous
Keyb
Scan


SQL> SELECT branch_name, INSTR(branch_name, 'A') FROM warehouse_branch;

BRANCH_NAME                                        INSTR(BRANCH_NAME,'A')
-------------------------------------------------- ----------------------
MADURAI EAST                                                            2
CHENNAI SOUTH                                                           6
SIVAKASI MAIN                                                           4
MADURAI CENTRAL                                                         2
VIRUDUNAGAR EAST                                                        8
CHENNAI NORTH                                                           6
COIMBATORE HUB                                                          6
TRICHY DEPOT                                                            0
TENKASI WEST                                                            5
ERODE CENTRAL                                                          12

10 rows selected.


SQL> SELECT CONCAT(branch_name, city) FROM warehouse_branch;

CONCAT(BRANCH_NAME,CITY)
--------------------------------------------------------------------------------
MADURAI EASTMADURAI
CHENNAI SOUTHCHENNAI
SIVAKASI MAINSIVAKASI
MADURAI CENTRALMADURAI
VIRUDUNAGAR EASTVIRUDUNAGAR
CHENNAI NORTHCHENNAI
COIMBATORE HUBCOIMBATORE
TRICHY DEPOTTRICHY
TENKASI WESTTENKASI
ERODE CENTRALERODE

10 rows selected.


SQL> SELECT product_name || ' - Rs.' || price FROM product;

PRODUCT_NAME||'-RS.'||PRICE
--------------------------------------------------------------------------------
Printer - Rs.15000
Mouse - Rs.500
Keyboard - Rs.2200
Scanner - Rs.9000


SQL> SELECT TRIM(branch_name) FROM warehouse_branch;

TRIM(BRANCH_NAME)
--------------------------------------------------
MADURAI EAST
CHENNAI SOUTH
SIVAKASI MAIN
MADURAI CENTRAL
VIRUDUNAGAR EAST
CHENNAI NORTH
COIMBATORE HUB
TRICHY DEPOT
TENKASI WEST
ERODE CENTRAL

10 rows selected.


SQL> SELECT LTRIM(product_name) FROM product;

LTRIM(PRODUCT_NAME)
--------------------------------------------------
Printer
Mouse
Keyboard
Scanner


SQL> SELECT RTRIM(branch_name) FROM warehouse_branch;

RTRIM(BRANCH_NAME)
--------------------------------------------------
MADURAI EAST
CHENNAI SOUTH
SIVAKASI MAIN
MADURAI CENTRAL
VIRUDUNAGAR EAST
CHENNAI NORTH
COIMBATORE HUB
TRICHY DEPOT
TENKASI WEST
ERODE CENTRAL

10 rows selected.


SQL> SELECT REPLACE(sale_status, 'Completed', 'Finished') AS display_status FROM sales;

DISPLAY_STATUS
--------------------------------------------------------------------------------
Finished
Finished
Finished
Cancelled

SQL> SELECT LPAD(product_name, 20, '*') FROM product;

LPAD(PRODUCT_NAME,20,'*')
--------------------------------------------------------------------------------
*************Printer
***************Mouse
************Keyboard
*************Scanner

SQL> SELECT RPAD(branch_name, 25, '-') FROM warehouse_branch;

RPAD(BRANCH_NAME,25,'-')
--------------------------------------------------------------------------------
MADURAI EAST-------------
CHENNAI SOUTH------------
SIVAKASI MAIN------------
MADURAI CENTRAL----------
VIRUDUNAGAR EAST---------
CHENNAI NORTH------------
COIMBATORE HUB-----------
TRICHY DEPOT-------------
TENKASI WEST-------------
ERODE CENTRAL------------

10 rows selected.



SQL> SELECT branch_name, ASCII(branch_name) FROM warehouse_branch;

BRANCH_NAME                                        ASCII(BRANCH_NAME)
-------------------------------------------------- ------------------
MADURAI EAST                                                       77
CHENNAI SOUTH                                                      67
SIVAKASI MAIN                                                      83
MADURAI CENTRAL                                                    77
VIRUDUNAGAR EAST                                                   86
CHENNAI NORTH                                                      67
COIMBATORE HUB                                                     67
TRICHY DEPOT                                                       84
TENKASI WEST                                                       84
ERODE CENTRAL                                                      69


//delete

SQL> select * from sales;

   SALE_ID SALE_DATE SALE_STATUS          CUSTOMER_ID
---------- --------- -------------------- -----------
       201 10-FEB-26 Completed                      1
       202 11-FEB-26 Completed                      2
       203 12-FEB-26 Completed                      3
       204 13-FEB-26 Cancelled                      4


SQL> delete from sales where sale_date<'11-FEB-26';

1 row deleted.

SQL> select * from sales;

   SALE_ID SALE_DATE SALE_STATUS          CUSTOMER_ID
---------- --------- -------------------- -----------
       202 11-FEB-26 Completed                      2
       203 12-FEB-26 Completed                      3
       204 13-FEB-26 Cancelled                      4



SQL> select * from order_items;

ORDER_ITEM_ID    SALE_ID PRODUCT_ID   QUANTITY DELIVERY_
------------- ---------- ---------- ---------- ---------
          302        202        102          5 16-FEB-26
          303        203        103          5 17-FEB-26
          304        204        104          1 18-FEB-26


SQL> DELETE FROM order_items WHERE quantity < 3;
  
1 row deleted.

SQL> select * from order_items;

ORDER_ITEM_ID    SALE_ID PRODUCT_ID   QUANTITY DELIVERY_
------------- ---------- ---------- ---------- ---------
          302        202        102          5 16-FEB-26
          303        203        103          5 17-FEB-26



SQL> delete from order_items where sale_id=203;

1 row deleted.

SQL> select * from order_items;

ORDER_ITEM_ID    SALE_ID PRODUCT_ID   QUANTITY DELIVERY_
------------- ---------- ---------- ---------- ---------
          302        202        102          5 16-FEB-26




SQL> select * from returns;

 RETURN_ID    SALE_ID RETURN_DA QUANTITY_RETURNED
---------- ---------- --------- -----------------
REASON                                             REFUND_AMOUNT
-------------------------------------------------- -------------
       401        202 18-FEB-26                 1
Damaged item                                                2500

       402        203 19-FEB-26                 2
Wrong product                                                  0

       404        202 21-FEB-26                 1
Defective                                                      0


SQL> DELETE FROM returns WHERE reason LIKE '%Damaged%';

1 row deleted.

SQL> select * from returns;

 RETURN_ID    SALE_ID RETURN_DA QUANTITY_RETURNED
---------- ---------- --------- -----------------
REASON                                             REFUND_AMOUNT
-------------------------------------------------- -------------
       402        203 19-FEB-26                 2
Wrong product                                                  0

       404        202 21-FEB-26                 1
Defective                                                      0





SQL> select * from inward;

MOVEMENT_ID SUPPLIER_ID QUANTITY_RECEIVED RECEIVED_
----------- ----------- ----------------- ---------
        502           2               400 10-FEB-26
        503           2               350 11-FEB-26
        504           3               180 12-FEB-26

SQL> DELETE FROM inward WHERE movement_id IN (502, 504);

2 rows deleted.

SQL> select * from inward;

MOVEMENT_ID SUPPLIER_ID QUANTITY_RECEIVED RECEIVED_
----------- ----------- ----------------- ---------
        503           2               350 11-FEB-26



SQL> select * from warehouse_inventory;

 BRANCH_ID PRODUCT_ID RACK_NUMBER          LAST_UPDA
---------- ---------- -------------------- ---------
         1        102 R12                  08-FEB-26
         2        103 R3                   08-FEB-26
         2        104 R4                   08-FEB-26

SQL> DELETE FROM warehouse_inventory  WHERE branch_id NOT IN (2);z

1 row deleted.

SQL> select * from warehouse_inventory;

 BRANCH_ID PRODUCT_ID RACK_NUMBER          LAST_UPDA
---------- ---------- -------------------- ---------
         2        103 R3                   08-FEB-26
         2        104 R4                   08-FEB-26



SQL> select * from returns;

 RETURN_ID    SALE_ID RETURN_DA QUANTITY_RETURNED
---------- ---------- --------- -----------------
REASON                                             REFUND_AMOUNT
-------------------------------------------------- -------------
       402        203 19-FEB-26                 2
Wrong product                                                  0

       404        202 21-FEB-26                 1
Defective                                                      0


SQL> delete from returns;

2 rows deleted.

SQL> select * from returns;

no rows selected



//remaining queries

SQL> select price from product order by price;

     PRICE
----------
       500
      2200
      9000
     15000


SQL> select price,product_name from product order by price;

     PRICE PRODUCT_NAME
---------- --------------------------------------------------
       500 Mouse
      2200 Keyboard
      9000 Scanner
     15000 Printer


SQL> select price,product_name from product order by price desc;

     PRICE PRODUCT_NAME
---------- --------------------------------------------------
     15000 Printer
      9000 Scanner
      2200 Keyboard
       500 Mouse


SQL> select * from product where product_id between 103 and 105;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       103 Keyboard                                                 2200
          3           2

       104 Printer                                                 15000
          2           3

       105 Scanner                                                  9000
          2           3



SQL> select * from product where product_id not between 103 and 105;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       102 Mouse                                                     500
          3           2




SQL> SELECT * FROM warehouse_branch where LOWER(city) LIKE '%i%';

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
         7 MADURAI EAST
MADURAI                                                  7000
INACTVE

         8 CHENNAI SOUTH
CHENNAI                                                  5000
ACTIVE

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------

         1 SIVAKASI MAIN
SIVAKASI                                                 5000
ACTIVE

         2 MADURAI CENTRAL
MADURAI                                                  7000

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
ACTIVE

         3 VIRUDUNAGAR EAST
VIRUDUNAGAR                                              4500
ACTIVE

         4 CHENNAI NORTH

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
CHENNAI                                                  8000
ACTIVE

         5 COIMBATORE HUB
COIMBATORE                                               7000
ACTIVE


 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
         6 TRICHY DEPOT
TRICHY                                                   4000
INACTIVE

         9 TENKASI WEST
TENKASI                                                  7000
INACTVE

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------


9 rows selected.



SQL> select *from product where product_name like '__a%';

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
CATEGORY_ID SUPPLIER_ID
----------- -----------
       105 Scanner                                                  9000
          2           3



SQL> select * from warehouse_branch where branch_name not like 'M%';

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
         8 CHENNAI SOUTH
CHENNAI                                                  5000
ACTIVE

         1 SIVAKASI MAIN
SIVAKASI                                                 5000
ACTIVE

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------

         3 VIRUDUNAGAR EAST
VIRUDUNAGAR                                              4500
ACTIVE

         4 CHENNAI NORTH
CHENNAI                                                  8000

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
ACTIVE

         5 COIMBATORE HUB
COIMBATORE                                               7000
ACTIVE

         6 TRICHY DEPOT

 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
TRICHY                                                   4000
INACTIVE

         9 TENKASI WEST
TENKASI                                                  7000
INACTVE


 BRANCH_ID BRANCH_NAME
---------- --------------------------------------------------
CITY                                                 CAPACITY
-------------------------------------------------- ----------
STATUS
--------------------
        10 ERODE CENTRAL
ERODE                                                    5000
ACTIVE


8 rows selected.



SQL> select branch_name,city,decode(city,'MADURAI','URBAN','SIVAKASI','RURAL','OTHER') as decode_city from warehouse_branch;

BRANCH_NAME
--------------------------------------------------
CITY                                               DECOD
-------------------------------------------------- -----
MADURAI EAST
MADURAI                                            URBAN

CHENNAI SOUTH
CHENNAI                                            OTHER

SIVAKASI MAIN
SIVAKASI                                           RURAL


BRANCH_NAME
--------------------------------------------------
CITY                                               DECOD
-------------------------------------------------- -----
MADURAI CENTRAL
MADURAI                                            URBAN

VIRUDUNAGAR EAST
VIRUDUNAGAR                                        OTHER

CHENNAI NORTH
CHENNAI                                            OTHER


BRANCH_NAME
--------------------------------------------------
CITY                                               DECOD
-------------------------------------------------- -----
COIMBATORE HUB
COIMBATORE                                         OTHER

TRICHY DEPOT
TRICHY                                             OTHER

TENKASI WEST
TENKASI                                            OTHER


BRANCH_NAME
--------------------------------------------------
CITY                                               DECOD
-------------------------------------------------- -----
ERODE CENTRAL
ERODE                                              OTHER


10 rows selected.


SQL> select city,status,count(*) as total_branch_in_city from warehouse_branch group by city,status;

CITY                                               STATUS
-------------------------------------------------- --------------------
TOTAL_BRANCH_IN_CITY
--------------------
MADURAI                                            INACTVE
                   1

CHENNAI                                            ACTIVE
                   2

SIVAKASI                                           ACTIVE
                   1


CITY                                               STATUS
-------------------------------------------------- --------------------
TOTAL_BRANCH_IN_CITY
--------------------
MADURAI                                            ACTIVE
                   1

VIRUDUNAGAR                                        ACTIVE
                   1

COIMBATORE                                         ACTIVE
                   1


CITY                                               STATUS
-------------------------------------------------- --------------------
TOTAL_BRANCH_IN_CITY
--------------------
TRICHY                                             INACTIVE
                   1

TENKASI                                            INACTVE
                   1

ERODE                                              ACTIVE
                   1


9 rows selected.
