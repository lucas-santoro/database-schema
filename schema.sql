--DROP TABLE IF EXISTS tasks;
--DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    nickname VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(20) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INTEGER NOT NULL REFERENCES users(id),
    priority INTEGER NOT NULL DEFAULT 1
);

INSERT INTO users (name, email, password, nickname) VALUES
('Lucas Santoro', 'lucas@lucassantoro.com', '123456', 'lucas'),
('Gabriel Barbosa', 'gabi@ufms.br', 'hy8gsdabhd', 'gabriel'),
('João Pedro', 'joao@ufms.br', 'aijsdsdalsad', 'joaop');

INSERT INTO tasks (title, description, status, user_id, priority) VALUES
('Finish homework', 'Complete the database assignment', 'completed', 1, 1),
('Review pull requests', 'Check team submissions on GitHub', 'pending', 2, 2),
('Update documentation', 'Add usage examples to API docs', 'in progress', 3, 3);
