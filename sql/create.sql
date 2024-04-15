USE cake;
DROP TABLE IF EXISTS blog_posts_categories;
DROP TABLE IF EXISTS blog_posts;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    created DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    modified DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE blog_posts (
      id INT(11) NOT NULL AUTO_INCREMENT,
      name VARCHAR(255) NOT NULL,
      created DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
      modified DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (id)
);

CREATE TABLE blog_posts_categories (
   category_id INT(11),
   blog_post_id INT(11),
   PRIMARY KEY (`category_id`,`blog_post_id`),
   FOREIGN KEY (category_id) REFERENCES categories(id),
   FOREIGN KEY (blog_post_id) REFERENCES blog_posts(id)
);
