# New Features

- Added the `pgpool.databases` property to auto create databases in postgres
  Example:
``` 
    pgpool:  
      databases:
      - name: animals
        users:
        - porcupine
        - hedgehog

```

