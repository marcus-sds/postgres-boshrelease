# New Features
* Added option to deploy Postgres as a two-node HA cluster with HAProxy and a
  VRRP VIP. It features auto-failover and auto-recovery. Uses streaming 
  replication via WAL.

More information about HA postgres can be found in the `README`, and an example
manifest has been provided under `manifests/ha.yml`
