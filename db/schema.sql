DROP DATABASE IF EXISTS techblog_db;
CREATE DATABASE techblog_db;

USE techblog_db;

CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(25)NOT NUll,
  password VARCHAR(15) NOT NULL,
  
);

CREATE TABLE post (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_title VARCHAR(100) NOT NULL,
    post_body VARCHAR(150) NOT NULL, 
    FOREIGN KEY(username_id)
    REFERENCES user(id),
    ON DELETE SET NULL
);

CREATE TABLE comment {
    id INT AUTO_INCREMENT PRIMARY KEY,
    comment VARCHAR(300),
    FOREIGN KEY (post_id)
    REFERENCES post(id),
    FOREIGN KEY (user_id)
    REFERENCES user(id),
    ON DELETE SET NULL
};

