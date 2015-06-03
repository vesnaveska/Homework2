UPDATE books b
SET isbestseller = 1
WHERE b.id IN (
SELECT ub.book_id
FROM users_books ub
GROUP BY ub.book_id
HAVING COUNT(ub.user_id) > 10
);