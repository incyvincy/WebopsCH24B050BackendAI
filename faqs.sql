CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE faqs (
  id SERIAL PRIMARY KEY,
  question TEXT,
  answer TEXT,
  embedding VECTOR(3)
);

INSERT INTO faqs (question, answer, embedding)
VALUES
('What is Docker?', 'Docker is a containerization tool.', '[0.1, 0.2, 0.3]'),
('What is PostgreSQL?', 'PostgreSQL is a relational database.', '[0.4, 0.5, 0.6]'),
('What is pgvector?', 'pgvector allows vector similarity search in PostgreSQL.', '[0.7, 0.8, 0.9]');
