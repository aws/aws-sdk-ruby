Unreleased Changes
------------------

1.97.0 (2025-10-14)
------------------

* Feature - The AWS Backup job attribute extension enhancement helps customers better understand the plan that initiated each job, and the properties of the resource each job creates.

1.96.0 (2025-10-06)
------------------

* Feature - Adds optional MaxScheduledRunsPreview input to GetBackupPlan API to provide a preview of up to 10 next scheduled backup plan runs in the GetBackupPlan response.

1.95.0 (2025-08-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2025-08-21)
------------------

* Feature - Remove incorrect endpoint tests

1.93.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2025-07-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2025-06-17)
------------------

* Feature - AWS Backup is adding support for integration of its logically air-gapped vaults with the AWS Organizations Multi-party approval capability.

1.89.0 (2025-06-02)
------------------

* Feature - You can now subscribe to Amazon SNS notifications and Amazon EventBridge events for backup indexing. You can now receive notifications when a backup index is created, deleted, or fails to create, enhancing your ability to monitor and track your backup operations.

1.88.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2024-12-17)
------------------

* Feature - Add Support for Backup Indexing

1.82.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.78.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.77.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.75.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.74.0 (2024-08-30)
------------------

* Feature - The latest update introduces two new attributes, VaultType and VaultState, to the DescribeBackupVault and ListBackupVaults APIs. The VaultState attribute reflects the current status of the vault, while the VaultType attribute indicates the specific category of the vault.

1.73.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.72.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.68.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.66.0 (2024-03-15)
------------------

* Feature - This release introduces a boolean attribute ManagedByAWSBackupOnly as part of ListRecoveryPointsByResource api to filter the recovery points based on ownership. This attribute can be used to filter out the recovery points protected by AWSBackup.

1.65.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2023-12-06)
------------------

* Feature - AWS Backup - Features: Add VaultType to the output of DescribeRecoveryPoint, ListRecoveryPointByBackupVault API and add ResourceType to the input of ListRestoreJobs API

1.63.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.62.0 (2023-11-27)
------------------

* Feature - AWS Backup now supports restore testing, a new feature that allows customers to automate restore testing and validating their backups. Additionally, this release adds support for EBS Snapshots Archive tier.

1.61.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2023-11-14)
------------------

* Feature - AWS Backup - Features: Provide Job Summary for your backup activity.

1.59.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2023-08-28)
------------------

* Feature - Add support for customizing time zone for backup window in backup plan rules.

1.57.0 (2023-08-08)
------------------

* Feature - This release introduces a new logically air-gapped vault (Preview) in AWS Backup that stores immutable backup copies, which are locked by default and isolated with encryption using AWS owned keys. Logically air-gapped vault (Preview) allows secure recovery of application data across accounts.

1.56.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.52.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.51.0 (2023-05-22)
------------------

* Feature - Added support for tags on restore.

1.50.0 (2023-05-19)
------------------

* Feature - Add  ResourceArn, ResourceType, and BackupVaultName to ListRecoveryPointsByLegalHold API response.

1.49.0 (2023-02-08)
------------------

* Feature - This release added one attribute (resource name) in the output model of our 9 existing APIs in AWS backup so that customers will see the resource name at the output. No input required from Customers.

1.48.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.47.0 (2022-11-28)
------------------

* Feature - AWS Backup introduces support for legal hold and application stack backups. AWS Backup Audit Manager introduces support for cross-Region, cross-account reports.

1.46.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2022-07-08)
------------------

* Feature - This release adds support for authentication using IAM user identity instead of passed IAM role, identified by excluding the IamRoleArn field in the StartRestoreJob API. This feature applies to only resource clients with a destructive restore nature (e.g. SAP HANA).

1.44.0 (2022-05-04)
------------------

* Feature - Adds support to 2 new filters about job complete time for 3 list jobs APIs in AWS Backup

1.43.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2022-02-17)
------------------

* Feature - AWS Backup add new S3_BACKUP_OBJECT_FAILED and S3_RESTORE_OBJECT_FAILED event types in BackupVaultNotifications events list.

1.41.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-11-23)
------------------

* Feature - This release adds new opt-in settings for advanced features for DynamoDB backups

1.37.0 (2021-11-10)
------------------

* Feature - AWS Backup SDK provides new options when scheduling backups: select supported services and resources that are assigned to a particular tag, linked to a combination of tags, or can be identified by a partial tag value, and exclude resources from their assignments.

1.36.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-10-07)
------------------

* Feature - Launch of AWS Backup Vault Lock, which protects your backups from malicious and accidental actions, works with existing backup policies, and helps you meet compliance requirements.

1.33.0 (2021-10-05)
------------------

* Feature - AWS Backup Audit Manager framework report.

1.32.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.31.0 (2021-08-23)
------------------

* Feature - AWS Backup - Features: Evaluate your backup activity and generate audit reports.

1.30.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2021-03-10)
------------------

* Feature - Added support for enabling continuous backups.

1.27.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2021-01-26)
------------------

* Feature - Documentation updates for AWS Backup

1.25.0 (2020-11-18)
------------------

* Feature - AWS Backup now supports cross-account backup, enabling AWS customers to securely copy their backups across their AWS accounts within their AWS organizations.

1.24.0 (2020-10-19)
------------------

* Feature - Documentation updates for Cryo

1.23.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2020-09-23)
------------------

* Feature - This release allows customers to enable or disable advanced backup settings in backup plan. As part of this feature AWS Backup added support for  Windows VSS backup option for EC2 resources.

1.21.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-08-31)
------------------

* Feature - Documentation updates for Cryo

1.19.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-06-24)
------------------

* Feature - Customers can now manage and monitor their backups in a policied manner across their AWS accounts, via an integration between AWS Backup and AWS Organizations

1.17.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.16.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2020-05-20)
------------------

* Feature - This release allows customers to enable or disable AWS Backup support for an AWS resource type. This release also includes new APIs, update-region-settings and describe-region-settings, which can be used to opt in to a specific resource type. For all current AWS Backup customers, the default settings enable support for EBS, EC2, StorageGateway, EFS, DDB and RDS resource types.

1.13.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.12.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2020-01-13)
------------------

* Feature - Cross-region backup is a new AWS Backup feature that allows enterprises to copy backups across multiple AWS services to different regions.

1.10.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.8.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.6.0 (2019-05-21)
------------------

* Feature - API update.

1.5.0 (2019-05-15)
------------------

* Feature - API update.

1.4.0 (2019-05-14)
------------------

* Feature - API update.

1.3.0 (2019-03-21)
------------------

* Feature - API update.

1.2.0 (2019-03-18)
------------------

* Feature - API update.

1.1.0 (2019-03-14)
------------------

* Feature - API update.

1.0.0 (2019-01-16)
------------------

* Feature - Initial release of `aws-sdk-backup`.
