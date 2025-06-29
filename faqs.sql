CREATE EXTENSION IF NOT EXISTS vector;

-- Drop the faqs table if it exists
DROP TABLE IF EXISTS faqs;

-- This SQL script creates a table for FAQs with vector embeddings
CREATE TABLE faqs (
  id SERIAL PRIMARY KEY,
  question TEXT,
  answer TEXT,
  embedding VECTOR(3)
);

-- Insert initial 3 FAQs
INSERT INTO faqs (question, answer, embedding)
VALUES
  ('What is Docker?', 'Docker is a containerization tool.', '[0.1, 0.2, 0.3]'),
  ('What is PostgreSQL?', 'PostgreSQL is a relational database.', '[0.4, 0.5, 0.6]'),
  ('What is pgvector?', 'pgvector allows vector similarity search in PostgreSQL.', '[0.7, 0.8, 0.9]');

-- Batch insert 2 more
BEGIN;
INSERT INTO faqs (question, answer, embedding)
VALUES
  ('What is Redis?', 'Redis is an in-memory key-value store.', '[0.1, 0.1, 0.1]'),
  ('What is GraphQL?', 'GraphQL is a query language for APIs.', '[0.2, 0.2, 0.2]');
COMMIT;
