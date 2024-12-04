The following SQL query is prone to SQL injection vulnerability because it directly incorporates user-supplied input into the query string without proper sanitization:

```sql
SELECT * FROM users WHERE username = '