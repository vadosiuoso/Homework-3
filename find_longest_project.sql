SELECT ID FROM PROJECT 
WHERE DATEDIFF(MONTH, START_DATE, FINISH_DATE) = (SELECT DATEDIFF(MONTH, START_DATE, FINISH_DATE)
FROM PROJECT
ORDER BY DATEDIFF(MONTH, START_DATE, FINISH_DATE) DESC
LIMIT 1);