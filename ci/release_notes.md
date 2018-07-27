# Improvements

- Default timeouts for HAProxy have been bumped from 30 seconds to
  five whole minutes (a 10x increase!)  This should help take care
  of people running the psql client interactively, and not issuing
  a command at least twice a minute.

- Keepalived (+VRRP) is now optional.  If you set the new property
  `keepalived.enabled` to false, you still get HA, but the VIP
  doesn't matter because keepaliveditself won't be running.

  You can still hook up the haproxy instances to an IaaS load
  balancer, like an AWS ELB.

- Logging is way better, with at least 50% less noise!
