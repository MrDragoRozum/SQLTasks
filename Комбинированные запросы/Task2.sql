--Перепишите предыдущую инструкцию SQL, что­
--бы в ней использовалось только одно предложение
--SELECT.

SELECT prod_id, quantity
FROM OrderItems oi
WHERE prod_id LIKE 'BNBG%' OR quantity = 100
ORDER BY prod_id, quantity;