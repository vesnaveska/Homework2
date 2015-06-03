SELECT u.*
FROM users u
JOIN users_books ub
ON u.id = ub.user_id
JOIN books b
ON b.id = ub.book_id
WHERE b.title = 'Book #45';