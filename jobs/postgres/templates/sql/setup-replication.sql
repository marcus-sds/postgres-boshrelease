DO
$body$
BEGIN
  IF NOT EXISTS (SELECT * FROM pg_catalog.pg_user WHERE usename = 'replication') THEN
    CREATE ROLE replication WITH REPLICATION LOGIN;
  END IF;
END
$body$;
