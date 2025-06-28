# README.md

This repository is the submission for the WebOps and BlockChain Club's InstiSpace project. It includes containerized PostgreSQL setup with pgvector, SQL scripts for managing FAQs with vector embeddings, a GraphQL schema for querying data, and a technical comparison between GraphQL and REST APIs.

## Project Structure

```
├── README.md                # Project overview and documentation
├── docker-compose.yml       # Docker Compose setup for PostgreSQL with pgvector
├── Dockerfile               # PostgreSQL image customization to install pgvector
├── faqs.sql                 # SQL script to create table, insert data, and run queries
├── graphql_vs_rest.md       # Comparison between GraphQL and REST paradigms
├── schema.graphql           # GraphQL schema for querying FAQs
├── screenshot.png           # Screenshot showing successful SQL query result
└── submission.zip           # Zipped folder of all submission components
```

## Step 1: Docker and PostgreSQL Setup

- A PostgreSQL container is built using a custom Dockerfile and managed using Docker Compose.
- The `pgvector` extension is installed inside the container to support vector similarity search.
- A table named `faqs` is created to store frequently asked questions along with their embeddings.
- Example records have been inserted with sample float vector embeddings.
- The database setup and content are validated using a GUI client (e.g., PgAdmin or TablePlus).

## Step 2: Database Operations and GraphQL Schema

- SQL scripts are included to:
  - Create the `faqs` table
  - Insert multiple records safely in a single query
  - Retrieve all records using `SELECT * FROM faqs`
- A GraphQL schema has been designed with the following capabilities:
  - Query all FAQ entries
  - Query FAQs filtered by a specific question
- A comparative markdown document explains the practical differences and use-cases of GraphQL versus REST APIs.

## Included Screenshot

The `screenshot.png` file demonstrates a successful execution of the query `SELECT * FROM faqs` from a GUI client interface. This serves as visual confirmation of correct Docker and database setup.

## Submission Details

The `submission` folder contains all required components:
- PostgreSQL configuration and setup scripts
- SQL schema and data manipulation scripts
- GraphQL API schema
- REST vs GraphQL documentation
- Verification screenshot

This submission demonstrates backend container orchestration, database integration, schema design, and API querying concepts in a compact project.
=======
# WebopsCH24B050BackendAI
Backend + AI Task 02


