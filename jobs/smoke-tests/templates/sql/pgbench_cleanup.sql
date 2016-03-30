DO $$
	DECLARE
		row pg_tables%ROWTYPE;
	BEGIN
		FOR row IN 
			SELECT
				schemaname,
				tablename
			FROM
				pg_catalog.pg_tables
			WHERE
				tableowner = '<%= p('postgres.smoke-tests.target.username') %>'
			AND
				tablename LIKE 'pgbench\_%'
		LOOP
			EXECUTE 'DROP TABLE ' || quote_ident(row.schemaname) || '.' || quote_ident(row.tablename);
		END LOOP;
	END $$
LANGUAGE plpgsql;
