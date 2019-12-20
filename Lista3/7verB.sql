WITH
RECURSIVE new1(n, k, newton) AS (
		SELECT 0, 0, 1
	UNION ALL
		SELECT n+1, 0, 1
		FROM new1
		WHERE n<10
),
new2(n, k, newton) AS (
		SELECT 1, 1, 1
	UNION ALL
		SELECT n+1, n+1, 1
		FROM new1
		WHERE n<10
),
	#tu u gory mam dach
	#a potem licze 2 po 1, 3 po 2, 4 po 3, 5 po 4 itd.
	#(n po k)=n/k*(n-1 po k-1)
wyb (n, k, newton) AS (
		SELECT * FROM new1
	UNION ALL
		SELECT * FROM new2
	UNION ALL
		SELECT n + 1, k+1, (n+1)*newton/(k+1)
		FROM wyb
		WHERE n < 10 AND k < 10
)
	SELECT DISTINCT n, k, newton
	FROM wyb;

