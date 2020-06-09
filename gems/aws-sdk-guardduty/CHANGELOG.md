Unreleased Changes
------------------

1.34.0 (2020-06-02)
------------------

* Feature - Amazon GuardDuty findings now include S3 bucket details under the resource section if an S3 Bucket was one of the affected resources

1.33.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.32.0 (2020-05-27)
------------------

* Feature - Documentation updates for GuardDuty

1.31.0 (2020-05-08)
------------------

* Feature - Documentation updates for GuardDuty

1.30.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-04-21)
------------------

* Feature - AWS GuardDuty now supports using AWS Organizations delegated administrators to create and manage GuardDuty master and member accounts.  The feature also allows GuardDuty to be automatically enabled on associated organization accounts.

1.28.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.27.0 (2020-03-06)
------------------

* Feature - Amazon GuardDuty findings now include the OutpostArn if the finding is generated for an AWS Outposts EC2 host.

1.26.0 (2020-03-05)
------------------

* Feature - Add a new finding field for EC2 findings indicating the instance's local IP address involved in the threat.

1.25.0 (2019-11-15)
------------------

* Feature - This release includes new operations related to findings export, including: CreatePublishingDestination, UpdatePublishingDestination, DescribePublishingDestination, DeletePublishingDestination and ListPublishingDestinations.

1.24.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.23.0 (2019-08-09)
------------------

* Feature - New "evidence" field in the finding model to provide evidence information explaining why the finding has been triggered. Currently only threat-intelligence findings have this field. Some documentation updates.

1.22.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.19.0 (2019-06-13)
------------------

* Feature - Support for tagging functionality in Create and Get operations for Detector, IP Set, Threat Intel Set, and Finding Filter resources and 3 new tagging APIs: ListTagsForResource, TagResource, and UntagResource.

1.18.0 (2019-06-06)
------------------

* Feature - Improve FindingCriteria Condition field names, support long-typed conditions and deprecate old Condition field names.

1.17.0 (2019-05-21)
------------------

* Feature - API update.

1.16.0 (2019-05-15)
------------------

* Feature - API update.

1.15.0 (2019-05-14)
------------------

* Feature - API update.

1.14.0 (2019-03-21)
------------------

* Feature - API update.

1.13.0 (2019-03-18)
------------------

* Feature - API update.

1.12.0 (2019-03-14)
------------------

* Feature - API update.

1.11.0 (2018-11-20)
------------------

* Feature - API update.

1.10.0 (2018-10-24)
------------------

* Feature - API update.

1.9.0 (2018-10-23)
------------------

* Feature - API update.

1.8.0 (2018-10-01)
------------------

* Feature - API update.

1.7.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.6.0 (2018-09-05)
------------------

* Feature - API update.

1.5.0 (2018-06-26)
------------------

* Feature - API update.

1.4.0 (2018-05-04)
------------------

* Feature - API update.

1.3.0 (2018-04-30)
------------------

* Feature - API update.

1.2.0 (2018-02-12)
------------------

* Feature - API update.

1.1.0 (2018-01-25)
------------------

* Feature - API update.

1.0.0 (2017-11-29)
------------------

* Feature - Initial release of `aws-sdk-guardduty`.

