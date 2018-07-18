SELECT * 
FROM quiz
LIMIT 5;

SELECT * 
FROM home_try_on
LIMIT 5;

SELECT * 
FROM purchase
LIMIT 5;

SELECT DISTINCT q.user_id,
	h.user_id IS NOT NULL AS 'is_home_try_on',
  h.number_of_pairs,
  p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h
	ON q.user_id = h.user_id
LEFT JOIN purchase p
	ON p.user_id = q.user_id
LIMIT 10;

SELECT COUNT( q.user_id) AS 'Confirmed HT Purchase'
FROM quiz q
LEFT JOIN home_try_on h
	ON q.user_id = h.user_id
LEFT JOIN purchase p
	ON p.user_id = q.user_id
 WHERE h.user_id IS NOT NULL 
 AND p.user_id IS NOT NULL;
 
 SELECT COUNT(user_id) AS 'All Home Try Ons'
FROM home_try_on;
 
 SELECT COUNT(user_id) AS 'All Quizzes'
FROM quiz;

SELECT COUNT(number_of_pairs) AS '3 Pairs'
FROM home_try_on
WHERE number_of_pairs LIKE '%3%';

SELECT COUNT(number_of_pairs) AS '5 Pairs'
FROM home_try_on
WHERE number_of_pairs LIKE '%5%';

SELECT COUNT( q.user_id) AS '3 Pairs & Purchase'
FROM quiz q
LEFT JOIN home_try_on h
	ON q.user_id = h.user_id
LEFT JOIN purchase p
	ON p.user_id = q.user_id
 WHERE h.user_id IS NOT NULL 
 AND p.user_id IS NOT NULL 
 AND h.number_of_pairs LIKE '%3%';
 
 SELECT COUNT( q.user_id) AS '5 Pairs & Purchase'
FROM quiz q
LEFT JOIN home_try_on h
	ON q.user_id = h.user_id
LEFT JOIN purchase p
	ON p.user_id = q.user_id
 WHERE h.user_id IS NOT NULL 
 AND p.user_id IS NOT NULL 
 AND h.number_of_pairs LIKE '%5%';




