DROP PROCEDURE TransferMoney;

DELIMITER //
CREATE PROCEDURE TransferMoney(IN amount INT,IN depositID INT,IN withdrowID INT)
BEGIN 
START TRANSACTION;
IF (SELECT Balance FROM accounts WHERE accountID=2)<amount THEN ROLLBACK;
ELSE
UPDATE accounts SET Balance=Balance+amount WHERE accountID=depositID;
UPDATE accounts SET Balance=Balance-amount WHERE accountID=withdrowID;
END IF;
COMMIT;

END;

//
DELIMITER ;

CALL TransferMoney(1000,1,2);