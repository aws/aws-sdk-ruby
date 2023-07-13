Unreleased Changes
------------------

1.62.0 (2023-07-13)
------------------

* Feature - Added LunCount to the response object of DescribeStorageSystemResourcesResponse, LunCount represents the number of LUNs on a storage system resource.

1.61.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.59.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.56.0 (2023-04-25)
------------------

* Feature - This release adds 13 new APIs to support AWS DataSync Discovery GA.

1.55.0 (2023-02-22)
------------------

* Feature - AWS DataSync has relaxed the minimum length constraint of AccessKey for Object Storage locations to 1.

1.54.0 (2023-02-14)
------------------

* Feature - With this launch, we are giving customers the ability to use older SMB protocol versions, enabling them to use DataSync to copy data to and from their legacy storage arrays.

1.53.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.52.0 (2022-12-16)
------------------

* Feature - AWS DataSync now supports the use of tags with task executions. With this new feature, you can apply tags each time you execute a task, giving you greater control and management over your task executions.

1.51.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2022-10-24)
------------------

* Feature - Added support for self-signed certificates when using object storage locations; added BytesCompressed to the TaskExecution response.

1.49.0 (2022-07-15)
------------------

* Feature - Documentation updates for AWS DataSync regarding configuring Amazon FSx for ONTAP location security groups and SMB user permissions.

1.48.0 (2022-06-28)
------------------

* Feature - AWS DataSync now supports Amazon FSx for NetApp ONTAP locations.

1.47.0 (2022-05-27)
------------------

* Feature - AWS DataSync now supports TLS encryption in transit, file system policies and access points for EFS locations.

1.46.0 (2022-05-05)
------------------

* Feature - AWS DataSync now supports a new ObjectTags Task API option that can be used to control whether Object Tags are transferred.

1.45.0 (2022-04-05)
------------------

* Feature - AWS DataSync now supports Amazon FSx for OpenZFS locations.

1.44.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.41.0 (2021-12-20)
------------------

* Feature - AWS DataSync now supports FSx Lustre Locations.

1.40.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-11-03)
------------------

* Feature - AWS DataSync now supports Hadoop Distributed File System (HDFS) Locations

1.37.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2021-08-25)
------------------

* Feature - Added include filters to CreateTask and UpdateTask, and added exclude filters to StartTaskExecution, giving customers more granular control over how DataSync transfers files, folders, and objects.

1.34.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2021-05-28)
------------------

* Feature - Added SecurityDescriptorCopyFlags option that allows for control of which components of SMB security descriptors are copied from source to destination objects.

1.31.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2021-03-02)
------------------

* Feature - Additional API Support to update NFS/SMB/ObjectStorage locations

1.29.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-11-09)
------------------

* Feature - DataSync now enables customers to adjust the network bandwidth used by a running AWS DataSync task.

1.27.0 (2020-09-30)
------------------

* Feature - This release enables customers to create s3 location for S3 bucket's located on an AWS Outpost.

1.26.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.24.0 (2020-08-18)
------------------

* Feature - DataSync support for filters as input arguments to the ListTasks and ListLocations API calls.

1.23.0 (2020-07-27)
------------------

* Feature - Today AWS DataSync releases support for self-managed object storage Locations and the new TransferMode Option.

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

1.20.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-01-24)
------------------

* Feature - AWS DataSync now supports FSx for Windows File Server Locations

1.16.0 (2019-11-20)
------------------

* Feature - Update to configure task to run periodically on a schedule

1.15.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.14.0 (2019-10-08)
------------------

* Feature - Add Sync options to enable/disable TaskQueueing

1.13.0 (2019-09-24)
------------------

* Feature - Added S3StorageClass, OverwriteMode sync option, and ONLY_FILES_TRANSFERRED setting for the VerifyMode sync option.

1.12.0 (2019-08-22)
------------------

* Feature - This release adds support for SMB location type.

1.11.0 (2019-08-05)
------------------

* Feature - Support VPC endpoints.

1.10.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

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

1.4.0 (2019-05-13)
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

1.0.0 (2018-11-26)
------------------

* Feature - Initial release of `aws-sdk-datasync`.
