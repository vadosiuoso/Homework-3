SELECT 'YOUNGEST' AS "TYPE", birthday FROM WORKER 
WHERE BIRTHDAY IN (SELECT birthday FROM WORKER
ORDER BY BIRTHDAY DESC
LIMIT 1)
UNION 
SELECT 'OLDEST' AS "TYPE", birthday FROM WORKER 
WHERE BIRTHDAY  IN (SELECT birthday FROM WORKER
ORDER BY BIRTHDAY
LIMIT 1)