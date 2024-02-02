DELETE FROM account;
ALTER SEQUENCE account_id_seq RESTART WITH 1;
ALTER SEQUENCE post_id_seq RESTART WITH 1;
ALTER SEQUENCE comment_id_seq RESTART WITH 1;
ALTER SEQUENCE fav_id_seq RESTART WITH 1;

INSERT INTO account(email) VALUES 
('ajwaldro@gmail.com'), ('ozzcodes@gmail.com'), ('ozzcodes@outlook.com');

INSERT INTO post (title, content, account_id) VALUES
( 'Dictionaries', 'Are fun', 3),  -- ozzcodes@gmail.com
( 'BeautifulSoup', 'Has a complex API', 1), -- ajwaldro@gmail.com
( 'Many to Many', 'Is elegant', (SELECT id FROM account WHERE email='ozzcodes@gmail.com' ));

INSERT INTO comment (content, post_id, account_id) VALUES
( 'I agree', 1, 1), -- dict / ed
( 'Especially for counting', 1, 2), -- dict / sue
( 'And I don''t understand why', 2, 2), -- dict / sue
( 'Someone should make "EasySoup" or something like that', 
    (SELECT id FROM post WHERE title='BeautifulSoup'),
    (SELECT id FROM account WHERE email='ajwaldro@gmail.com' )),
( 'Good idea - I might just do that', 
    (SELECT id FROM post WHERE title='BeautifulSoup'),
    (SELECT id FROM account WHERE email='ozzcodes@outlook.com' ))
