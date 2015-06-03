SELECT u.first_name, u.last_name, COUNT(ub.book_id)
FROM users u
JOIN users_books ub ON u.id=ub.user_id
WHERE u.age BETWEEN 20 AND 50
GROUP BY u.first_name, u.last_name
HAVING COUNT(ub.book_id) > 10;