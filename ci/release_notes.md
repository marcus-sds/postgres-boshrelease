## Bug Fixes

- Fixed a bug in the template for pgpool that was redirecting all
  traffic to the local postgres node, causing a less-than-HA
  situation.  This is a pretty serious deficiency, so anyone using
  this release should upgrade.
