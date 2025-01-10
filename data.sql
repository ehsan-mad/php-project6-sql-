-- 1. How do you add a new author to the authors table? 

INSERT INTO authors(author_name) VALUES('saad'), ('ali'), ('ahmed'), ('mohsin'), ('kamran') ,( 'usman'), ('fahad'), ('noman'), ('zain'), ('bilal');

-- 2. How do you retrieve all authors from the authors table?
select * from authors;

-- 3. How do you retrieve a specific author by their ID from the authors table? 
select id from authors WHERE id =5;

-- 4. How do you update an author’s name in the authors table?

UPDATE authors SET author_name='gg' where id=6;


-- 5. How do you delete an author by their ID from the authors table? 

DELETE FROM authors where id=6;


-- 6. How do you add a new category to the categories table? 
INSERT INTO categories(category_name) VALUES('shirt'), ('pant'), ('shoes'), ('watch'), ('glasses') ,( 'cap'), ('belt'), ('tie'), ('socks'), ('jacket');

-- 7. How do you retrieve all categories from the categories table? 
select * from categories;
-- 8. How do you retrieve a specific category by its ID from the categories table? 
select category_name FROM categories WHERE id=5;
-- 9. How do you update a category’s name in the categories table? 
update categories set category_name='dresses' where id=5;
-- 10. How do you delete a category by its ID from the categories table? 
delete from categories where id=6;

-- 11. How do you add a new blog to the blogs table? 
INSERT INTO blogs(title,	body,	author_id,	category_id) VALUES('blog1', 'WOW blog 1', 1, 1), ('blog2', 'GG blog 2', 2, 2), ('blog3', 'DAMN blog 3', 3, 3);

INSERT INTO blogs(title,	body,	author_id,	category_id) VALUES('blog4', 'WOW blog 4', 4, 4), ('blog5', 'GG blog 5',5 , 5);
-- 12. How do you retrieve all blogs from the blogs table? 
SELECT * FROM blogs;
-- 13. How do you retrieve a specific blog by its ID from the blogs table? 
SELECT title from blogs where id=2;
-- 14. How do you retrieve all blogs with their category and author information? 
select blogs.title, blogs.body, authors.author_name, categories.category_name   FROM blogs 
join authors on blogs.author_id = authors.id 
join categories on blogs.category_id =categories.id;
-- 15. How do you update a blog’s title in the blogs table? 
update blogs set title='updated' WHERE id=3;
-- 16. How do you update a blog’s category or author in the blogs table? 
update blogs set category_id=2, author_id=2 WHERE id=3;
-- 17. How do you delete a blog by its ID from the blogs table? 
DELETE from blogs where id=3;

--Specific Queries: 

-- 18. How do you get all blogs written by a specific author? 
select authors.author_name, blogs.title FROM
blogs
join authors on blogs.author_id = authors.id
where authors.id=2;

-- 19. How do you get all blogs under a specific category? 
select categories.category_name, blogs.title , blogs.body FROM
blogs
join categories on blogs.category_id= categories.id
where categories.id=4;