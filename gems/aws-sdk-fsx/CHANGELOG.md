Unreleased Changes
------------------

1.49.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2022-01-25)
------------------

* Feature - This release adds support for growing SSD storage capacity and growing/shrinking SSD IOPS for FSx for ONTAP file systems.

1.47.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2021-11-30)
------------------

* Feature - This release adds support for the FSx for OpenZFS file system type, FSx for Lustre file systems with the Persistent_2 deployment type, and FSx for Lustre file systems with Amazon S3 data repository associations and automatic export policies.

1.45.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2021-10-06)
------------------

* Feature - This release adds support for Lustre 2.12 to FSx for Lustre.

1.42.0 (2021-09-02)
------------------

* Feature - Announcing Amazon FSx for NetApp ONTAP, a new service that provides fully managed shared storage in the AWS Cloud with the data access and management capabilities of ONTAP.

1.41.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-06-08)
------------------

* Feature - This release adds support for auditing end-user access to files, folders, and file shares using Windows event logs, enabling customers to meet their security and compliance needs.

1.37.0 (2021-05-27)
------------------

* Feature - This release adds LZ4 data compression support to FSx for Lustre to reduce storage consumption of both file system storage and file system backups.

1.36.0 (2021-04-12)
------------------

* Feature - Support for cross-region and cross-account backup copies

1.35.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-11-24)
------------------

* Feature - This release adds the capability to increase storage capacity of Amazon FSx for Lustre file systems, providing the flexibility to meet evolving storage needs over time.

1.32.0 (2020-11-09)
------------------

* Feature - This release adds support for creating DNS aliases for Amazon FSx for Windows File Server, and using AWS Backup to automate scheduled, policy-driven backup plans for Amazon FSx file systems.

1.31.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-08-20)
------------------

* Feature - Documentation updates for Amazon FSx

1.27.0 (2020-08-12)
------------------

* Feature - This release adds the capability to create persistent file systems for throughput-intensive workloads using Hard Disk Drive (HDD) storage and an optional read-only Solid-State Drive (SSD) cache.

1.26.0 (2020-08-05)
------------------

* Feature - Documentation updates for StorageCapacity input value format.

1.25.0 (2020-07-24)
------------------

* Feature - Documentation update for FSx for Lustre

1.24.0 (2020-07-23)
------------------

* Feature - Adds support for AutoImport, a new FSx for Lustre feature that allows customers to configure their FSx file system to automatically update its contents when new objects are added to S3 or existing objects are overwritten.

1.23.0 (2020-06-24)
------------------

* Feature - This release adds the capability to take highly-durable, incremental backups of your FSx for Lustre persistent file systems. This capability makes it easy to further protect your file system data and to meet business and regulatory compliance requirements.

1.22.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.21.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-06-01)
------------------

* Feature - New capabilities to update storage capacity and throughput capacity of your file systems, providing the flexibility to grow file storage and to scale up or down the available performance as needed to meet evolving storage needs over time.

1.19.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-03-26)
------------------

* Feature - This release includes two changes: a new lower-cost, storage type called HDD (Hard Disk Drive), and a new generation of the Single-AZ deployment type called Single AZ 2. The HDD storage type can be selected on Multi AZ 1 and Single AZ 2 deployment types.

1.16.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2020-02-24)
------------------

* Feature - Announcing persistent file systems for Amazon FSx for Lustre that are ideal for longer-term storage and workloads, and a new generation of scratch file systems that offer higher burst throughput for spiky workloads.

1.14.0 (2019-12-23)
------------------

* Feature - This release adds a new family of APIs (create-data-repository-task, describe-data-repository-task, and cancel-data-repository-task) that allow users to perform operations between their file system and its linked data repository.

1.13.0 (2019-11-20)
------------------

* Feature - Announcing a Multi-AZ deployment type for Amazon FSx for Windows File Server, providing fully-managed Windows file storage with high availability and redundancy across multiple AWS Availability Zones.

1.12.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-06-24)
------------------

* Feature - Starting today, you can join your Amazon FSx for Windows File Server file systems to your organization's self-managed Microsoft Active Directory while creating the file system. You can also perform in-place updates of file systems to keep your Active Directory configuration up to date.

1.8.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2019-05-21)
------------------

* Feature - API update.

1.6.0 (2019-05-15)
------------------

* Feature - API update.

1.5.0 (2019-05-14)
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

1.1.0 (2019-02-06)
------------------

* Feature - API update.

1.0.0 (2018-11-28)
------------------

* Feature - Initial release of `aws-sdk-fsx`.