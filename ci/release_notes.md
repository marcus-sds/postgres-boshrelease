## Upgrades

- pgpoolII upgraded from 3.5.0 to 3.5.4

## Improvements

- All UNIX domain sockets now reside under `/var/vcap/sys/run`,
  where they ought to, and not in `/tmp`.

- Admin accounts can now be created via the `admin` property
  on entries in `pgpool.users`.
