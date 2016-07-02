# Improvements

- When custom databases are created, the manifest can be used to
  specify any PG extensions that need to be loaded via the `extensions`
  array attribute on the database.
  Example:

```
properties:
  pgpool:
    databases:
    - name: animals
      extensions:
      - citext
      - pgcrypto
```
