-----------------------------------------------------------------
C:\> cd _temp
C:\temp> mysqldump -u root -p pizza_express > pizza_express.sql

-----------------------------------------------------------------
mysql> create database shop_copy;
mysql> exit

C:\temp> mysql -u root -p shop_copy < pizza_express.sql
-----------------------------------------------------------------
C:\temp> mysqldump -u root -p --all-databases > all-databases.sql