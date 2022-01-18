-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS followers;



CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);



CREATE TABLE followers ( 
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
); 

CREATE TABLE likes (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
    self_id INTEGER,
    followers_id INTEGER,
    post_id INTEGER
)

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    self_id INTEGER,
    followers_id INTEGER,
    post_id INTEGER
)

CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp TEXT,
    likes INTEGER,
    comments TEXT.
);