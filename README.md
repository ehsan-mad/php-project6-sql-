# php-project6-sql

## Authors Table 

id: INT, Auto Increment, Primary Key. 

author_name: VARCHAR(255), NOT NULL. 

created_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP. 

updated_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP, Auto-updates on record change (ON UPDATE CURRENT_TIMESTAMP). 


## Categories Table 

id: INT, Auto Increment, Primary Key. 

category_name: VARCHAR(255), NOT NULL. 

created_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP. 

updated_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP, Auto-updates on record change (ON UPDATE CURRENT_TIMESTAMP).


## Blogs Table: 

id: Primary Key, Auto-Increment. 

title: Required, String (Max 255 characters). 

body: Required, Text. 

category_id: Foreign Key referencing categories(id), Required. 

author_id: Foreign Key referencing authors(id), Required. 

created_at: Auto-generated timestamp for record creation. 

updated_at: Auto-updated timestamp for record updates.


Relationships: 

category_id: Deletes associated blogs if the category is deleted (ON DELETE CASCADE). 

author_id: Deletes associated blogs if the author is deleted (ON DELETE CASCADE). 

category_id: Automatically updates associated blogs if the category is updated (ON UPDATE CASCADE). 

author_id: Automatically updates associated blogs if the author is updated (ON UPDATE CASCADE). 


১. Authors Table: 

-- 1. How do you add a new author to the authors table? 

-- 2. How do you retrieve all authors from the authors table? 

-- 3. How do you retrieve a specific author by their ID from the authors table? 

-- 4. How do you update an author’s name in the authors table? 

-- 5. How do you delete an author by their ID from the authors table? 


২. Categories Table: 

-- 6. How do you add a new category to the categories table? 

-- 7. How do you retrieve all categories from the categories table? 

-- 8. How do you retrieve a specific category by its ID from the categories table? 

-- 9. How do you update a category’s name in the categories table? 

-- 10. How do you delete a category by its ID from the categories table? 


৩. Blogs Table: 

-- 11. How do you add a new blog to the blogs table? 

-- 12. How do you retrieve all blogs from the blogs table? 

-- 13. How do you retrieve a specific blog by its ID from the blogs table? 

-- 14. How do you retrieve all blogs with their category and author information? -- 15. How do you update a blog’s title in the blogs table? 

-- 16. How do you update a blog’s category or author in the blogs table? 

-- 17. How do you delete a blog by its ID from the blogs table? 


৪. Specific Queries: 

-- 18. How do you get all blogs written by a specific author? 

-- 19. How do you get all blogs under a specific category? 
