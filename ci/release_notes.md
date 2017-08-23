* CI pipeline is testing + creating final releases using `bosh2`; also includes `testflight-pr` to automatically test pull requests
* WIP `manifests/postgres.yml` to deploy a cluster of pgpool/postgres. `smoke-tests` errand is disabled in CI at the time of this release being cut.
* `postgres` job's `db` link exposes `postgres.config`, `pgpool.users`, and `pgpool.databases`
