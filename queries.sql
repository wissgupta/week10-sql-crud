-- ------------------------------
-- CREATE DATABASE
-- ------------------------------
CREATE DATABASE project_manager_db;
USE project_manager_db;

-- ------------------------------
-- CREATE TABLES
-- ------------------------------

-- USERS TABLE
CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100),
  email VARCHAR(100),
  role VARCHAR(50)
);

-- PROJECTS TABLE
CREATE TABLE projects (
  project_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200),
  description TEXT,
  owner_id INT
);

-- COMMENTS TABLE
CREATE TABLE comments (
  comment_id INT AUTO_INCREMENT PRIMARY KEY,
  content TEXT,
  user_id INT,
  project_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ------------------------------
-- INSERT SAMPLE DATA
-- ------------------------------

-- USERS
INSERT INTO users (username, email, role) VALUES
('johndoe', 'john@example.com', 'contributor'),
('alice99', 'alice@example.com', 'contributor'),
('bob_admin', 'bob@example.com', 'admin');

-- PROJECTS
INSERT INTO projects (title, description, owner_id) VALUES
('Website Redesign', 'Revamp the homepage and contact form', 1),
('E-commerce App', 'Develop a full-stack shopping platform', 2);

-- COMMENTS
INSERT INTO comments (content, user_id, project_id, created_at) VALUES
('Great layout update!', 1, 1, '2025-07-12 10:15:00'),
('We should refactor the CSS.', 2, 1, '2025-07-12 11:00:00'),
('I love the checkout flow.', 1, 2, '2025-07-13 09:45:00');

-- ------------------------------
-- SAFE CREATE QUERY
-- ------------------------------
-- Add a new user safely using named parameters
INSERT INTO users (username, email, role)
VALUES (:username, :email, :role);

-- ------------------------------
-- SAFE READ QUERY
-- ------------------------------
-- Get comments for a specific project safely
SELECT c.comment_id, c.content, u.username, c.created_at
FROM comments c
JOIN users u ON c.user_id = u.user_id
WHERE c.project_id = :projectId
ORDER BY c.created_at DESC;

-- ------------------------------
-- SAFE UPDATE QUERY
-- ------------------------------
-- Promote a user safely using named parameters
UPDATE users
SET role = :newRole
WHERE user_id = :userId;
