# GraphQL vs REST

When building APIs, **REST** and **GraphQL** are two common ways to get data from the backend.

---

## 🔹 What is REST?

- REST uses multiple URLs, one for each type of data.
- Example:
  - To get user info: `GET /users/1`
  - To get that user’s posts: `GET /users/1/posts`

We usually make separate requests for each resource.

---

## 🔹 What is GraphQL?

- GraphQL uses a single endpoint (usually `/graphql`)
- You send a query that asks for exactly what data you want.

Example query:

```graphql
{
  user(id: 1) {
    name
    posts {
      title
    }
  }
}

- **REST** exposes multiple endpoints (one per resource).
- **GraphQL** uses a single endpoint with flexible queries.

## Pros of GraphQL:
- Precise data fetching (no over/under-fetching)
- Strongly typed schema
- Easier versioning

## Pros of REST:
- Simpler to cache
- Easy to use for simple APIs

