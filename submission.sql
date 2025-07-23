psql -f init.sql

psql mainframe_override

\d forum_posts

SELECT id, author, date, title, date FROM forum_posts WHERE date >= '2048-04-01' AND content ILIKE '%dad%'AND content ILIKE '%emptystack%';

SELECT first_name, last_name FROM forum_accounts WHERE username = 'smart-money-44';

SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';

    username    |  password   | first_name | last_name
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
 lance-main-11  | password789 | Lance      | Steele
(2 rows)

mainframe_override=# SELECT * FROM forum_accounts WHERE last_name = 'Steele';

    username     | first_name | last_name
-----------------+------------+-----------
 sharp-engine-57 | Andrew     | Steele
 stinky-tofu-98  | Kevin      | Steele
 smart-money-44  | Brad       | Steele
(3 rows)


mainframe_override=# SELECT * from emptystack_accounts WHERE first_name = 'Andrew';

    username    |  password   | first_name | last_name
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
(1 row)

node mainframe

Username: triple-cart-38
Password: password456
Welcome, triple-cart-38!
Loading messages and projects...
Your data has been loaded to emptystack.sql. Have a nice day!


mainframe_override=# SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
  id   |     from     |       to       |   subject    |                            body
-------+--------------+----------------+--------------+------------------------------------------------------------
 LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.
(1 row)


mainframe_override=# SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
   username   |    password    | first_name | last_name
--------------+----------------+------------+-----------
 your-boss-99 | notagaincarter | Skylar     | Singer
(1 row)


mainframe_override=# SELECT * FROM emptystack_projects WHERE code = 'TAXI';
    id    | code
----------+------
 DczE0v2b | TAXI
(1 row)


MacBook-Pro-596:-mainframe-override milandiaz$ node mainframe -stop
WARNING: admin access required. Unauthorized access will be logged.
Username: your-boss-99
Password: notagaincarter
Welcome, your-boss-99.
Project ID: DczE0v2b
Initiating project shutdown sequence...
5...
4...
3...
2...
1...
Project shutdown complete.
MacBook-Pro-596:-mainframe-override milandiaz$