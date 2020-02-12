Unreleased Changes
------------------

1.24.0 (2020-02-05)
------------------

* Feature - Updated the maximum number of tags that can be added to a snapshot using DLM to 45.

1.23.0 (2019-12-19)
------------------

* Feature - You can now copy snapshots across regions using Data Lifecycle Manager (DLM). You can enable policies which, along with create, can now also copy snapshots to one or more AWS region(s). Copies can be scheduled for up to three regions from a single policy and retention periods are set for each region separately.

1.22.0 (2019-11-25)
------------------

* Feature - You can now set time based retention policies on Data Lifecycle Manager. With this launch, DLM allows you to set snapshot retention period in the following interval units: days, weeks, months and years.

1.21.0 (2019-11-20)
------------------

* Feature - DLM now supports Fast Snapshot Restore. You can enable Fast Restore on snapshots created by DLM, provide the AZs and the number of snapshots to be enabled with this capability.

1.20.0 (2019-11-13)
------------------

* Feature - You can now add tags to a lifecycle policy in Data Lifecycle Manager (DLM). Tags allow you to categorize your policies in different ways, such as by department, purpose or owner. You can also enable resource level permissions based on tags to set access control on ability to modify or delete a tagged policy.

1.19.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.16.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2019-05-29)
------------------

* Feature - Customers can now simultaneously take snapshots of multiple EBS volumes attached to an EC2 instance. With this new capability, snapshots guarantee crash-consistency across multiple volumes by preserving the order of IO operations. This new feature is fully integrated with Amazon Data Lifecycle Manager (DLM) allowing customers to automatically manage snapshots by creating lifecycle policies.

1.14.0 (2019-05-21)
------------------

* Feature - API update.

1.13.0 (2019-05-15)
------------------

* Feature - API update.

1.12.0 (2019-05-14)
------------------

* Feature - API update.

1.11.0 (2019-03-21)
------------------

* Feature - API update.

1.10.0 (2019-03-18)
------------------

* Feature - API update.

1.9.0 (2019-03-14)
------------------

* Feature - API update.

1.8.0 (2019-02-08)
------------------

* Feature - API update.

1.7.0 (2018-11-20)
------------------

* Feature - API update.

1.6.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.6.0 (2018-11-08)
------------------

* Feature - API update.

1.5.0 (2018-10-24)
------------------

* Feature - API update.

1.4.0 (2018-10-23)
------------------

* Feature - API update.

1.3.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.2.0 (2018-09-05)
------------------

* Feature - API update.

1.1.0 (2018-08-21)
------------------

* Feature - API update.

1.0.0 (2018-07-12)
------------------

* Feature - Initial release of `aws-sdk-dlm`.

