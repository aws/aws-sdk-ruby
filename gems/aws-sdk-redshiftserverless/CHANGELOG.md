Unreleased Changes
------------------

1.25.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2024-01-10)
------------------

* Feature - Updates to ConfigParameter for RSS workgroup, removal of use_fips_ssl

1.23.0 (2024-01-05)
------------------

* Feature - use_fips_ssl and require_ssl parameter support for Workgroup, UpdateWorkgroup, and CreateWorkgroup

1.22.0 (2023-11-30)
------------------

* Feature - This release adds the following support for Amazon Redshift Serverless: 1) cross-account cross-VPCs, 2) copying snapshots across Regions, 3) scheduling snapshot creation, and 4) restoring tables from a recovery point.

1.21.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2023-11-17)
------------------

* Feature - Updated SDK for Amazon Redshift Serverless, which provides the ability to configure a connection with IAM Identity Center to manage user and group access to databases.

1.18.0 (2023-11-08)
------------------

* Feature - Added a new parameter in the workgroup that helps you control your cost for compute resources. This feature provides a ceiling for RPUs that Amazon Redshift Serverless can scale up to. When automatic compute scaling is required, having a higher value for MaxRPU can enhance query throughput.

1.17.0 (2023-10-30)
------------------

* Feature - Added support for custom domain names for Amazon Redshift Serverless workgroups. This feature enables customers to create a custom domain name and use ACM to generate fully secure connections to it.

1.16.0 (2023-10-23)
------------------

* Feature - This release adds support for customers to see the patch version and workgroup version in Amazon Redshift Serverless.

1.15.0 (2023-10-16)
------------------

* Feature - Added support for managing credentials of serverless namespace admin using AWS Secrets Manager.

1.14.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.13.0 (2023-09-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2023-01-25)
------------------

* Feature - Added query monitoring rules as possible parameters for create and update workgroup operations.

1.6.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.5.0 (2022-12-02)
------------------

* Feature - Add Table Level Restore operations for Amazon Redshift Serverless. Add multi-port support for Amazon Redshift Serverless endpoints. Add Tagging support to Snapshots and Recovery Points in Amazon Redshift Serverless.

1.4.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.3.0 (2022-07-11)
------------------

* Feature - Removed prerelease language for GA launch.

1.2.0 (2022-06-29)
------------------

* Feature - Add new API operations for Amazon Redshift Serverless, a new way of using Amazon Redshift without needing to manually manage provisioned clusters. The new operations let you interact with Redshift Serverless resources, such as create snapshots, list VPC endpoints, delete resource policies, and more.

1.1.0 (2022-06-16)
------------------

* Feature - Add new API operations for Amazon Redshift Serverless, a new way of using Amazon Redshift without needing to manually manage provisioned clusters. The new operations let you interact with Redshift Serverless resources, such as create snapshots, list VPC endpoints, delete resource policies, and more.

* Issue - Re-release of previously yanked version with new API changes.

1.0.0 (2022-06-16)
------------------

* Feature - Initial release of `aws-sdk-redshiftserverless`.

