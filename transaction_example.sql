SELECT * FROM bankdb.accounts;

SET autocommit =0;
START TRANSACTION ;

UPDATE accounts SET balance = balance- 1000 WHERE  account_no=1;

UPDATE accounts SET balance=balance+1000 WHERE account_no =2;

-- SELECT 1/0;
COMMIT;
ROLLBACK;

 SET autocommit=1;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 USE bankdb;
 SELECT * FROM accounts;
 SET autocommit =0;
 
 START TRANSACTION;
 UPDATE accounts SET  balance =balance+1000 WHERE account_no=1;
 
 UPDATE accounts SET balance =balance-1000 WHERE account_no=2;
 -- SELECT 1/0;

 COMMIT;
  ROLLBACK;
 SET autocommit=1;
 