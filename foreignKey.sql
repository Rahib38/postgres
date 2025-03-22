CREATE Table "user1"(
    id SERIAL PRIMARY key,
    username VARCHAR(25) NOT NULL
);
CREATE Table post(
    id SERIAL PRIMARY key,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user1"(id) ON DELETE set DEFAULT DEFAULT 2 
)

INSERT INTO "user1" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post(title, user_id) VALUES
('Enjoyin a sunny day with Akash!',2),
('Batash just shared an amazing recipe!',1),
('Exploring adventures with Sagor!',4),
('Nodi wisdom always leave me inspired!',3);


DROP Table post;
DROP Table "user1";

SELECT * from "user1";
SELECT * from post;

DELETE FROM "user1"
    WHERE id=4;

SELECT title, username FROM post
JOIN "user1" on post.user_id = "user1".id;
SELECT * FROM post
JOIN "user1" on post.user_id = "user1".id;
SELECT post.id FROM post
JOIN "user1" on post.user_id = "user1".id;
SELECT p.id FROM post p
JOIN "user1" on p.user_id = "user1".id;
SELECT * FROM post as p
JOIN "user1" on p.user_id = "user1".id; 
SELECT * FROM post as p
LEFT JOIN "user1" on p.user_id = "user1".id; 
SELECT * FROM post as p
RIGHT JOIN "user1" on p.user_id = "user1".id; 

SELECT * FROM "user1"
 JOIN post on post.user_id = "user1".id;

SELECT * FROM post as p
FULL OUTER JOIN "user1" on p.user_id = "user1".id; 


INSERT INTO post (id, title,user_id) VALUES
(5, 'this is a test post title', NULL);