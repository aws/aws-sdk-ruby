Unreleased Changes
------------------

1.11.0 (2026-05-13)
------------------

* Feature - Customers can now configure custom domain names for their RTB Fabric gateways. This enables partners to use their own branded domain for RTB traffic instead of the default rtbfabric endpoint

1.10.0 (2026-04-10)
------------------

* Feature - Adds optional health check configuration for Responder Gateways with ASG Managed Endpoints. When provided, RTB Fabric continuously probes customers' instance IPs and routes traffic only to healthy ones, reducing errors during deployments, scaling events, and instance failures.

1.9.0 (2026-04-07)
------------------

* Feature - AWS RTB Fabric External Responder gateways now support HTTP in addition to HTTPS for inbound external links. Gateways can accept bid requests on port 80 or serve both protocols simultaneously via listener configuration, giving customers flexible transport options for their bidding infrastructure

1.8.0 (2026-03-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2026-01-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2026-01-08)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2026-01-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2025-11-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2025-11-11)
------------------

* Feature - Added LogSettings and LinkAttribute fields to external links

1.2.0 (2025-10-30)
------------------

* Feature - RTB Fabric documentation update.

1.1.0 (2025-10-24)
------------------

* Feature - Add support for custom rate limits.

1.0.0 (2025-10-22)
------------------

* Feature - Initial release of `aws-sdk-rtbfabric`.

