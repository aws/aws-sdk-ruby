Unreleased Changes
------------------

1.112.0 (2025-07-02)
------------------

* Feature - Added TagResource, UntagResource, and ListTagsForResource support for directory bucket

1.111.0 (2025-06-25)
------------------

* Feature - Add support for the ability to use Amazon S3 Access Points with Amazon FSx for OpenZFS file systems.

1.110.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.109.0 (2025-05-12)
------------------

* Feature - Updates to support S3 Express zonal endpoints for directory buckets in AWS CLI

1.108.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2025-04-22)
------------------

* Feature - Fix endpoint resolution test cases

1.106.0 (2025-04-04)
------------------

* Feature - Updated max size of Prefixes parameter of Scope data type.

1.105.0 (2025-03-31)
------------------

* Feature - Amazon S3 adds support for S3 Access Points for directory buckets in AWS Dedicated Local Zones

1.104.0 (2025-03-13)
------------------

* Feature - Updating GetDataAccess response for S3 Access Grants to include the matched Grantee for the requested prefix

1.103.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.102.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2025-01-27)
------------------

* Feature - Minor fix to ARN validation for Lambda functions passed to S3 Batch Operations

1.100.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.99.0 (2024-12-03)
------------------

* Feature - It allows customers to pass CRC64NVME as a header in S3 Batch Operations copy requests

1.98.0 (2024-12-02)
------------------

* Feature - Amazon S3 introduces support for AWS Dedicated Local Zones

1.97.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2024-11-06)
------------------

* Feature - Fix ListStorageLensConfigurations and ListStorageLensGroups deserialization for Smithy SDKs.

1.95.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2024-09-04)
------------------

* Feature - Amazon Simple Storage Service /S3 Access Grants / Features : This release launches new Access Grants API - ListCallerAccessGrants.

1.88.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2024-04-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2024-04-11)
------------------

* Feature - Documentation updates for Amazon S3-control.

1.78.0 (2024-02-14)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2024-01-12)
------------------

* Feature - S3 On Outposts team adds dualstack endpoints support for S3Control and S3Outposts API calls.

1.75.0 (2023-12-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2023-11-28)
------------------

* Feature - Adds support for S3 Express One Zone, and InvocationSchemaVersion 2.0 for S3 Batch Operations.

1.73.0 (2023-11-27)
------------------

* Feature - Introduce Amazon S3 Access Grants, a new S3 access control feature that maps identities in directories such as Active Directory, or AWS Identity and Access Management (IAM) Principals, to datasets in S3.

1.72.0 (2023-11-22)
------------------

* Feature - Amazon S3 Batch Operations now manages buckets or prefixes in a single step.

1.71.0 (2023-11-15)
------------------

* Feature - Add 5 APIs to create, update, get, list, delete S3 Storage Lens group(eg. CreateStorageLensGroup), 3 APIs for tagging(TagResource,UntagResource,ListTagsForResource), and update to StorageLensConfiguration to allow metrics to be aggregated on Storage Lens groups.

1.70.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2023-08-24)
------------------

* Feature - Updates to endpoint ruleset tests to address Smithy validation issues and standardize the capitalization of DualStack.

1.68.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2023-04-19)
------------------

* Feature - Provides support for overriding endpoint when region is "snow". This will enable bucket APIs for Amazon S3 Compatible storage on Snow Family devices.

1.62.0 (2023-03-15)
------------------

* Feature - Added support for S3 Object Lambda aliases.

1.61.0 (2023-03-13)
------------------

* Feature - Added support for cross-account Multi-Region Access Points. Added support for S3 Replication for S3 on Outposts.

1.60.0 (2023-01-25)
------------------

* Feature - Add additional endpoint tests for S3 Control. Fix missing endpoint parameters for PutBucketVersioning and GetBucketVersioning. Prior to this fix, those operations may have resulted in an invalid endpoint being resolved.

1.59.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.58.0 (2022-11-30)
------------------

* Feature - Amazon S3 now supports cross-account access points. S3 bucket owners can now allow trusted AWS accounts to create access points associated with their bucket.

1.57.0 (2022-11-29)
------------------

* Feature - Added two new APIs to support Amazon S3 Multi-Region Access Point failover controls: GetMultiRegionAccessPointRoutes and SubmitMultiRegionAccessPointRoutes. The failover control APIs are supported in the following Regions: us-east-1, us-west-2, eu-west-1, ap-southeast-2, and ap-northeast-1.

1.56.0 (2022-11-17)
------------------

* Feature - Added 34 new S3 Storage Lens metrics to support additional customer use cases.

1.55.0 (2022-11-02)
------------------

* Feature - S3 on Outposts launches support for Lifecycle configuration for Outposts buckets. With S3 Lifecycle configuration, you can mange objects so they are stored cost effectively. You can manage objects using size-based rules and specify how many noncurrent versions bucket will retain.

1.54.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2022-10-19)
------------------

* Feature - Updates internal logic for constructing API endpoints. We have added rule-based endpoints and internal model parameters.

1.52.0 (2022-10-04)
------------------

* Feature - S3 Object Lambda adds support to allow customers to intercept HeadObject and ListObjects requests and introduce their own compute. These requests were previously proxied to S3.

1.51.0 (2022-09-21)
------------------

* Feature - S3 on Outposts launches support for object versioning for Outposts buckets. With S3 Versioning, you can preserve, retrieve, and restore every version of every object stored in your buckets. You can recover from both unintended user actions and application failures.

1.50.0 (2022-04-05)
------------------

* Feature - Documentation-only update for doc bug fixes for the S3 Control API docs.

1.49.0 (2022-02-24)
------------------

* Feature - Amazon S3 Batch Operations adds support for new integrity checking capabilities in Amazon S3.

1.48.0 (2022-02-08)
------------------

* Feature - This release adds support for S3 Batch Replication. Batch Replication lets you replicate existing objects, already replicated objects to new destinations, and objects that previously failed to replicate. Customers will receive object-level visibility of progress and a detailed completion report.

1.47.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2022-01-04)
------------------

* Feature - Documentation updates for the renaming of Glacier to Glacier Flexible Retrieval.

1.45.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Fix a bug where the dualstack plugin was dropping URI paths.

1.43.0 (2021-11-22)
------------------

* Feature - Added Amazon CloudWatch publishing option for S3 Storage Lens metrics.

1.42.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Feature - Support FIPS endpoints for S3 Outposts using Bucket and Access Point ARNs.

1.41.1 (2021-10-20)
------------------

* Issue - use the correct service with the `EndpointProvider` to determine `sigv4_region`.

1.41.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-09-02)
------------------

* Feature - S3 Multi-Region Access Points provide a single global endpoint to access a data set that spans multiple S3 buckets in different AWS Regions.

1.39.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-07-26)
------------------

* Feature - S3 Access Point aliases can be used anywhere you use S3 bucket names to access data in S3

1.35.0 (2021-07-22)
------------------

* Feature - Documentation updates for Amazon S3-control

1.34.0 (2021-06-03)
------------------

* Feature - Amazon S3 Batch Operations now supports S3 Bucket Keys.

1.33.0 (2021-05-11)
------------------

* Feature - Documentation updates for Amazon S3-control

1.32.0 (2021-03-24)
------------------

* Feature - Documentation updates for s3-control

1.31.0 (2021-03-18)
------------------

* Feature - S3 Object Lambda is a new S3 feature that enables users to apply their own custom code to process the output of a standard S3 GET request by automatically invoking a Lambda function with a GET request

1.30.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2021-03-08)
------------------

* Feature - Documentation updates for Amazon S3

1.28.0 (2021-02-23)
------------------

* Feature - Documentation updates for s3-control

1.27.0 (2021-02-02)
------------------

* Feature - Amazon S3 Batch Operations now supports Delete Object Tagging

* Feature - Support PrivateLink using the client `:endpoint` option. This patch has several minor behavioral changes. 1) Any operation using the `outpost_id` parameter with a client configured with `:use_dualstack_endpoint` will now raise an `ArgumentError` as dualstack is not supported by S3 Outposts. 2) Fix a bug where clients configured with `:use_dualstack_endpoint` resolved to the wrong endpoint by not prefixing the account id to the host. 3) A client constructed using both `:use_dualstack_endpoint` and `:endpoint` will now raise an `ArgumentError`.

1.26.0 (2021-01-14)
------------------

* Feature - Amazon S3 Batch Operations now supports restoring objects from the S3 Intelligent-Tiering Archive Access and Deep Archive Access tiers.

1.25.0 (2020-11-18)
------------------

* Feature - AWS S3 Storage Lens provides visibility into your storage usage and activity trends at the organization or account level, with aggregations by Region, storage class, bucket, and prefix.

1.24.0 (2020-09-30)
------------------

* Feature - Amazon S3 on Outposts expands object storage to on-premises AWS Outposts environments, enabling you to store and retrieve objects using S3 APIs and features.

* Feature - Support Outpost Access Point and Outpost Bucket ARNs.

1.23.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.20.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-05-04)
------------------

* Feature - Amazon S3 Batch Operations now supports Object Lock.

1.16.0 (2020-03-16)
------------------

* Feature - Amazon S3 now supports Batch Operations job tagging.

1.15.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2019-12-03)
------------------

* Feature - Amazon S3 Access Points is a new S3 feature that simplifies managing data access at scale for shared data sets on Amazon S3. Access Points provide a customizable way to access the objects in a bucket, with a unique hostname and access policy that enforces the specific permissions and network controls for any request made through the access point. This represents a new way of provisioning access to shared data sets.

1.13.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-05-29)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2019-05-21)
------------------

* Feature - API update.

1.7.0 (2019-05-15)
------------------

* Feature - API update.

1.6.0 (2019-05-14)
------------------

* Feature - API update.

1.5.0 (2019-04-30)
------------------

* Feature - API update.

1.4.0 (2019-03-21)
------------------

* Feature - API update.

1.3.0 (2019-03-18)
------------------

* Feature - API update.

1.2.0 (2019-03-14)
------------------

* Feature - API update.

1.1.0 (2018-11-20)
------------------

* Feature - Support S3 Control plugin working with endpoint trait.

1.0.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.0.0 (2018-11-15)
------------------

* Feature - Initial release of `aws-sdk-s3control`.
