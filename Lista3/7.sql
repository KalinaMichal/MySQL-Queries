WITH RECURSIVE newton AS
(
	select 2 as n, 1 as k, cast(liczNewton(2,1) as char(20)) as w
	UNION ALL	
	SELECT  n + 1, k+1, liczNewton(n + 1, k+1 )
    FROM newton WHERE n < 10
), 

SELECT * FROM newton WHERE n<9 AND n>=5 AND k>=2 AND k<=5;

drop function if exists liczNewton;
DELIMITER $$
CREATE FUNCTION liczNewton ( N int, K int )
RETURNS INT
BEGIN
		declare p int;
   		declare pom int default 0;
    		declare wynik int default 1;
	IF K = 0
	THEN
		return '1';
	ELSE
		SET p = N - K;

        WHILE pom < K
        do
        SET pom = pom + 1;
        SET wynik = wynik * (p + pom) / pom;
        END while;
		RETURN wynik;
	END IF;
END $$
DELIMITER ;




#mam 10.1.31-MariaDB a potrzeba co najmniej 10.3
SELECT VERSION();