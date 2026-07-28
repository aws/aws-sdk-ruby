Unreleased Changes
------------------

1.45.0 (2026-07-21)
------------------

* Feature - This release adds support for custom plugins in Amazon Timestream for InfluxDB. InfluxDB 3 Core and Enterprise DB parameter groups now accept a plugin repository URL and optional AWS Secrets Manager secret ARN, so the Processing Engine loads your Python plugins from a public or private repository.

1.44.0 (2026-07-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2026-05-28)
------------------

* Feature - Adding new BDD representation of endpoint ruleset

1.42.0 (2026-05-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2026-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2026-03-26)
------------------

* Feature - Timestream for InfluxDB adds support for customer defined maintenance windows. This allows customers to define maintenance schedule during resource creation and updates

1.39.0 (2026-03-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2026-01-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2026-01-08)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2026-01-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2025-12-16)
------------------

* Feature - This release adds support for rebooting InfluxDB DbInstances and DbClusters

1.34.0 (2025-11-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2025-10-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2025-10-15)
------------------

* Feature - This release adds support for creating and managing InfluxDB 3 Core and Enterprise DbClusters.

1.31.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2025-08-25)
------------------

* Feature - Add MAINTENANCE status for DbInstance and DbCluster

1.29.0 (2025-08-21)
------------------

* Feature - Remove incorrect endpoint tests

1.28.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2025-07-21)
------------------

* Feature - Timestream for InfluxDB adds support for db.influx.24xlarge instance type. This enhancement enables higher compute capacity for demanding workloads through CreateDbInstance, CreateDbCluster, UpdateDbInstance, and UpdateDbCluster APIs.

1.25.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2025-03-10)
------------------

* Feature - This release updates the default value of pprof-disabled from false to true.

1.21.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2025-02-17)
------------------

* Feature - This release introduces APIs to manage DbClusters and adds support for read replicas

1.19.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2025-01-28)
------------------

* Feature - Adds 'allocatedStorage' parameter to UpdateDbInstance API that allows increasing the database instance storage size and 'dbStorageType' parameter to UpdateDbInstance API that allows changing the storage type of the database instance

1.17.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2024-12-11)
------------------

* Feature - Adds networkType parameter to CreateDbInstance API which allows IPv6 support to the InfluxDB endpoint

1.15.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2024-10-10)
------------------

* Feature - This release updates our regex based validation rules in regards to valid DbInstance and DbParameterGroup name.

1.13.0 (2024-09-30)
------------------

* Feature - Timestream for InfluxDB now supports port configuration and additional customer-modifiable InfluxDB v2 parameters. This release adds Port to the CreateDbInstance and UpdateDbInstance API, and additional InfluxDB v2 parameters to the CreateDbParameterGroup API.

1.12.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2024-09-03)
------------------

* Feature - Timestream for InfluxDB now supports compute scaling and deployment type conversion. This release adds the DbInstanceType and DeploymentType parameters to the UpdateDbInstance API.

1.6.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2024-03-14)
------------------

* Feature - Initial release of `aws-sdk-timestreaminfluxdb`.

