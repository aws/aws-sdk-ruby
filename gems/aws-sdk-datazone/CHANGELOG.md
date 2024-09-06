Unreleased Changes
------------------

1.21.0 (2024-09-03)
------------------

* Feature - Add support to let data publisher specify a subset of the data asset that a subscriber will have access to based on the asset filters provided, when accepting a subscription request.

1.20.0 (2024-08-30)
------------------

* Feature - Amazon DataZone now adds new governance capabilities of Domain Units for organization within your Data Domains, and Authorization Policies for tighter controls.

1.19.0 (2024-08-28)
------------------

* Feature - Update regex to include dot character to be consistent with IAM role creation in the authorized principal field for create and update subscription target.

1.18.0 (2024-08-05)
------------------

* Feature - This releases Data Product feature. Data Products allow grouping data assets into cohesive, self-contained units for ease of publishing for data producers, and ease of finding and accessing for data consumers.

1.17.0 (2024-07-25)
------------------

* Feature - Introduces GetEnvironmentCredentials operation to SDK

1.16.0 (2024-07-23)
------------------

* Feature - This release removes the deprecated dataProductItem field from Search API output.

1.15.0 (2024-07-22)
------------------

* Feature - This release adds 1/ support of register S3 locations of assets in AWS Lake Formation hybrid access mode for DefaultDataLake blueprint. 2/ support of CRUD operations for Asset Filters.

1.14.0 (2024-07-09)
------------------

* Feature - This release deprecates dataProductItem field from SearchInventoryResultItem, along with some unused DataProduct shapes

1.13.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2024-06-27)
------------------

* Feature - This release supports the data lineage feature of business data catalog in Amazon DataZone.

1.11.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2024-06-14)
------------------

* Feature - This release introduces a new default service blueprint for custom environment creation.

1.8.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.5.0 (2024-04-03)
------------------

* Feature - This release supports the feature of dataQuality to enrich asset with dataQualityResult in Amazon DataZone.

1.4.0 (2024-01-30)
------------------

* Feature - Add new skipDeletionCheck to DeleteDomain. Add new skipDeletionCheck to DeleteProject which also automatically deletes dependent objects

1.3.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2023-10-04)
------------------

* Feature - Initial release of `aws-sdk-datazone`.

