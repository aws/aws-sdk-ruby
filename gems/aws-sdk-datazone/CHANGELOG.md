Unreleased Changes
------------------

1.45.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2025-07-24)
------------------

* Feature - This release adds support for 1) highlighting relevant text in returned results for Search and SearchListings APIs and 2) returning aggregated counts of values for specified attributes for SearchListings API.

1.43.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2025-07-15)
------------------

* Feature - Removing restriction of environment profile identifier as required field, S3 feature release

1.41.0 (2025-07-01)
------------------

* Feature - Add support for the new optional domain-unit-id parameter in the UpdateProject API.

1.40.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2025-05-05)
------------------

* Feature - This release adds a new authorization policy to control the usage of custom AssetType when creating an Asset. Customer can now add new grant(s) of policyType USE_ASSET_TYPE for custom AssetTypes to apply authorization policy to projects members and domain unit owners.

1.37.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2025-04-11)
------------------

* Feature - Raise hard limit of authorized principals per SubscriptionTarget from 10 to 20.

1.35.0 (2025-03-27)
------------------

* Feature - This release adds new action type of Create Listing Changeset for the Metadata Enforcement Rule feature.

1.34.0 (2025-03-21)
------------------

* Feature - Add support for overriding selection of default AWS IAM Identity Center instance as part of Amazon DataZone domain APIs.

1.33.0 (2025-03-13)
------------------

* Feature - This release adds support to update projects and environments

1.32.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2024-12-03)
------------------

* Feature - Adds support for Connections, ProjectProfiles, and JobRuns APIs. Supports the new Lineage feature at GA. Adjusts optionality of a parameter for DataSource and SubscriptionTarget APIs which may adjust types in some clients.

1.28.0 (2024-11-20)
------------------

* Feature - This release supports Metadata Enforcement Rule feature for Create Subscription Request action.

1.27.0 (2024-10-18)
------------------

* Feature - Adding the following project member designations: PROJECT_CATALOG_VIEWER, PROJECT_CATALOG_CONSUMER and PROJECT_CATALOG_STEWARD in the CreateProjectMembership API and PROJECT_CATALOG_STEWARD designation in the AddPolicyGrant API.

1.26.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

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

