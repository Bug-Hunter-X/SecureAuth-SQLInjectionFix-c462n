To mitigate the SQL injection vulnerability, use parameterized queries or prepared statements. This separates the data from the SQL code, preventing malicious code from being executed.

Here's an example of how to rewrite the query using parameterized queries:

```sql
PREPARE stmt FROM "SELECT * FROM users WHERE username = ?";
SET @username = 'userinput';
EXECUTE stmt USING @username;
DEALLOCATE PREPARE stmt;
```

This approach ensures that user-supplied input is treated as data and not as executable code.