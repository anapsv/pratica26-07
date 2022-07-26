1
SELECT u.id, u.name, c.name AS "city" FROM users u JOIN cities c ON u."cityId" = c.id WHERE u."cityId" = (SELECT (id) FROM cities WHERE name = 'Rio de Janeiro');

2
SELECT t.id, u1.name AS writer,  u2.name AS recipient, t.message FROM testimonials t JOIN users u1 ON u1.id = t."writerId" JOIN users u2 ON u2.id = t."recipientId";

3
SELECT e."userId", u.name, c.name AS "course", s.name AS "school", e."endDate" FROM educations e JOIN users u ON e."userId" = u.id JOIN courses c ON e."courseId" = c.id JOIN schools s ON s.id =   e."schoolId" WHERE e."userId" = 30 AND e.status = 'finished' ;
