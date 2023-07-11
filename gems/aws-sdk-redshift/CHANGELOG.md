Unreleased Changes
------------------

1.97.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2023-06-20)
------------------

* Feature - Added support for custom domain names for Redshift Provisioned clusters. This feature enables customers to create a custom domain name and use ACM to generate fully secure connections to it.

1.93.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2023-02-24)
------------------

* Feature - Documentation updates for Redshift API bringing it in line with IAM best practices.

1.90.0 (2023-02-03)
------------------

* Feature - Corrects descriptions of the parameters for the API operations RestoreFromClusterSnapshot, RestoreTableFromClusterSnapshot, and CreateCluster.

1.89.0 (2023-02-02)
------------------

* Feature - Enabled FIPS endpoints for GovCloud (US) regions in SDK.

1.88.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.87.0 (2022-10-27)
------------------

* Feature - This release clarifies use for the ElasticIp parameter of the CreateCluster and RestoreFromClusterSnapshot APIs.

1.86.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2022-09-09)
------------------

* Feature - This release updates documentation for AQUA features and other description updates.

1.84.0 (2022-07-11)
------------------

* Feature - This release adds a new --snapshot-arn field for describe-cluster-snapshots, describe-node-configuration-options, restore-from-cluster-snapshot, authorize-snapshot-acsess, and revoke-snapshot-acsess APIs. It allows customers to give a Redshift snapshot ARN or a Redshift Serverless ARN as input.

1.83.0 (2022-06-08)
------------------

* Feature - Adds new API GetClusterCredentialsWithIAM to return temporary credentials.

1.82.0 (2022-05-06)
------------------

* Feature - Introduces new field 'LoadSampleData' in CreateCluster operation. Customers can now specify 'LoadSampleData' option during creation of a cluster, which results in loading of sample data in the cluster that is created.

1.81.0 (2022-04-19)
------------------

* Feature - Introduces new fields for LogDestinationType and LogExports on EnableLogging requests and Enable/Disable/DescribeLogging responses. Customers can now select CloudWatch Logs as a destination for their Audit Logs.

1.80.0 (2022-03-23)
------------------

* Feature - This release adds a new [--encrypted | --no-encrypted] field in restore-from-cluster-snapshot API. Customers can now restore an unencrypted snapshot to a cluster encrypted with AWS Managed Key or their own KMS key.

1.79.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2022-02-17)
------------------

* Feature - SDK release for Cross region datasharing and cost-control for cross region datasharing

1.77.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2021-12-20)
------------------

* Feature - This release adds API support for managed Redshift datashares. Customers can now interact with a Redshift datashare that is managed by a different service, such as AWS Data Exchange.

1.74.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.73.0 (2021-11-23)
------------------

* Feature - This release adds support for reserved node exchange with restore/resize

1.72.0 (2021-11-19)
------------------

* Feature - Added support of default IAM role for CreateCluster, RestoreFromClusterSnapshot and ModifyClusterIamRoles APIs

1.71.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2021-08-03)
------------------

* Feature - API support for Redshift Data Sharing feature.

1.67.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2021-07-13)
------------------

* Feature - Release new APIs to support new Redshift feature - Authentication Profile

1.64.0 (2021-06-28)
------------------

* Feature - Added InvalidClusterStateFault to the DisableLogging API, thrown when calling the API on a non available cluster.

1.63.0 (2021-06-10)
------------------

* Feature - Added InvalidClusterStateFault to the ModifyAquaConfiguration API, thrown when calling the API on a non available cluster.

1.62.0 (2021-04-21)
------------------

* Feature - Add operations: AddPartner, DescribePartners, DeletePartner, and UpdatePartnerStatus to support tracking integration status with data partners.

1.61.0 (2021-04-13)
------------------

* Feature - Added support to enable AQUA in Amazon Redshift clusters.

1.60.0 (2021-04-09)
------------------

* Feature - Add support for case sensitive table level restore

1.59.0 (2021-03-31)
------------------

* Feature - Enable customers to share access to their Redshift clusters from other VPCs (including VPCs from other accounts).

1.58.0 (2021-03-23)
------------------

* Feature - Removed APIs to control AQUA on clusters.

1.57.0 (2021-03-22)
------------------

* Feature - Added support to enable AQUA in Amazon Redshift clusters.

1.56.0 (2021-03-18)
------------------

* Feature - Add new fields for additional information about VPC endpoint for clusters with reallocation enabled, and a new field for total storage capacity for all clusters.

1.55.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2021-01-22)
------------------

* Feature - Update VPC endpoint field names.

1.52.0 (2020-12-09)
------------------

* Feature - Add support for availability zone relocation feature.

1.51.0 (2020-11-19)
------------------

* Feature - Amazon Redshift support for returning ClusterNamespaceArn in describeClusters

1.50.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2020-08-27)
------------------

* Feature - Documentation updates for Amazon Redshift.

1.47.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.44.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2020-04-22)
------------------

* Feature - Amazon Redshift support for usage limits

1.40.0 (2020-04-08)
------------------

* Feature - Documentation updates for redshift


1.39.0 (2020-03-11)
------------------

* Feature - Amazon Redshift now supports operations to pause and resume a cluster on demand or on a schedule.

1.38.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-02-21)
------------------

* Feature - Extend elastic resize to support resizing clusters to different instance types.

1.36.0 (2020-01-17)
------------------

* Feature - Documentation updates for redshift

1.35.0 (2019-12-20)
------------------

* Feature - Documentation updates for Amazon Redshift RA3 node types.

1.34.0 (2019-11-25)
------------------

* Feature - This release contains changes for 1. Redshift Scheduler 2. Update to the DescribeNodeConfigurationOptions to include a new action type recommend-node-config

1.33.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2019-09-23)
------------------

* Feature - Adds API operation DescribeNodeConfigurationOptions and associated data structures.

1.31.0 (2019-08-09)
------------------

* Feature - Add expectedNextSnapshotScheduleTime and expectedNextSnapshotScheduleTimeStatus to redshift cluster object.

1.30.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2019-06-28)
------------------

* Feature - ClusterAvailabilityStatus: The availability status of the cluster for queries. Possible values are the following: Available, Unavailable, Maintenance, Modifying, Failed.

1.27.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-05-21)
------------------

* Feature - API update.

1.25.0 (2019-05-15)
------------------

* Feature - API update.

1.24.0 (2019-05-14)
------------------

* Feature - API update.

1.23.0 (2019-04-16)
------------------

* Feature - API update.

1.22.0 (2019-03-22)
------------------

* Feature - API update.

1.21.0 (2019-03-21)
------------------

* Feature - API update.

1.20.0 (2019-03-18)
------------------

* Feature - API update.

1.19.0 (2019-03-14)
------------------

* Feature - API update.

1.18.0 (2019-01-09)
------------------

* Feature - API update.

1.17.0 (2018-12-14)
------------------

* Feature - API update.

1.16.0 (2018-11-20)
------------------

* Feature - API update.

1.15.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.15.0 (2018-11-15)
------------------

* Feature - API update.

1.14.0 (2018-11-13)
------------------

* Feature - API update.

1.13.0 (2018-10-24)
------------------

* Feature - API update.

1.12.0 (2018-10-23)
------------------

* Feature - API update.

1.11.0 (2018-09-10)
------------------

* Feature - API update.

1.10.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.9.0 (2018-09-05)
------------------

* Feature - API update.

1.8.0 (2018-08-27)
------------------

* Feature - API update.

1.7.0 (2018-08-16)
------------------

* Feature - API update.

1.6.0 (2018-07-26)
------------------

* Feature - API update.

1.5.0 (2018-07-03)
------------------

* Feature - API update.

1.4.0 (2018-06-26)
------------------

* Feature - API update.

1.3.0 (2018-06-01)
------------------

* Feature - API update.

1.2.0 (2018-03-12)
------------------

* Feature - API update.

1.1.0 (2017-10-05)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-redshift` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc11 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc10 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc9 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc7 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc6 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc3 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc2 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-redshift` gem.
